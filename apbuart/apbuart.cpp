/**
 * \file      apbuart.h
 * \author    Rogerio Alves Cardoso
 *            Jainesh Doshi
 * 
 *            The ArchC Team
 *            http://www.archc.org/
 *
 *            Computer Systems Laboratory (LSC)
 *            IC-UNICAMP
 *            http://www.lsc.ic.unicamp.br/
 *
 * \version   1.0
 * \brief     Implements the Gaisler UART with APB interface (APBUART)
 * 
 *   This library is free software; you can redistribute it and/or
 *   modify it under the terms of the GNU Lesser General Public
 *   License as published by the Free Software Foundation; either
 *   version 2.1 of the License, or (at your option) any later version.
 *
 *   This library is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 *   Lesser General Public License for more details.
*/

#include "apbuart.h" 
#include <ac_debug_model.H>

// Debug model for ApbUART
// #define UART_debug

namespace grlib {

//Default Constructor
apbuart::apbuart(sc_module_name module_name, 
                 uint32_t socket_port): sc_module( module_name ),
                                        target_export("iport"),
                                        IRQ_port("IRQ_port", 0U),
                                        socket_port(socket_port),
                                        server(socket_port)
{
  //Binding target export
  target_export( *this );

  DataR        = 0x00;
  //TX Shift Register and TX FIFO empty
  StatusR      = 0x60;

  ControlR     = 0x0  ;
  ScalerR      = 0x0;

  //Received data interrupt enabled
  //Transmission holding register empty interrupt enabled
  //receiver line status interrupt enabled
  InterruptR    = 0x7;

   //Wait for socket connection
  fprintf(stderr, "APBUART: waiting for connection on port ...\n");
  server.accept(plug);
  
  SC_HAS_PROCESS(apbuart);
  SC_THREAD(uart_receive);
}

apbuart::~apbuart(){ }

void apbuart::generate_interrupt()
{
   ac_tlm_req request;
   ac_tlm_rsp response;

   request.type   = WRITE;
   request.data   = 0x2;
   request.dev_id = 0x66;
  //!FIXME:
   request.addr = IRQ_SEND_ADDR;
   response = IRQ_port->transport(request);

  if (response.status == ERROR)
    fprintf(stderr, "TLM Error when trying send a processor interruption\n");
  //return response.status;
}

void apbuart::uart_receive()
{
   for(;;) {

      wait(1, SC_MS); //!Sleep for 1ms

      if(plug.data_ready() && (InterruptR & RECEIVER_ENABLE)) {
          string data_rxd;
          plug >> data_rxd;
          //Bufferize the received string
          for ( int i=0; i < data_rxd.length(); i++)
            buffer.push(data_rxd[i]);
          //Write only one char to Holding Register
          DataR = (char) DATA(buffer.front());
          buffer.pop(); //Remove the readed char

          StatusR |= DATA_READY;
          StatusR &= ~TRASMITTER_SHIFT_REGISTER_EMPTY;
          StatusR &= ~TRASMITTER_FIFO_EMPTY;

          if(InterruptR & RECEIVER_INTERRUPT_ENABLE)
            generate_interrupt();
      }
   } //for
}

ac_tlm_rsp_status apbuart::uart_transmitter()
{
  StatusR |= DATA_READY;
  StatusR &= ~TRASMITTER_SHIFT_REGISTER_EMPTY;
  StatusR &= ~TRASMITTER_FIFO_EMPTY; 
  
  if(InterruptR & TRANSMITTER_ENABLE) {
    string data_txd = "";
    data_txd = (char) DATA(DataR);
    plug << data_txd;

    StatusR &= ~DATA_READY;
    StatusR |= TRASMITTER_SHIFT_REGISTER_EMPTY;
    StatusR |= TRASMITTER_FIFO_EMPTY;
    DataR = 0x0;

    if(InterruptR & TRANSMITTER_INTERRUPT_ENABLE)
       generate_interrupt();
  }
  return SUCCESS;
}

ac_tlm_rsp apbuart::transport( const ac_tlm_req &request ) 
{
  ac_tlm_rsp response;

  switch( request.type ) {
    case WRITE:
         response.status = uart_write(request.addr, __bswap_32(request.data));
#ifndef UART_debug
      dbg_printf("Serial unit write accessed at: 0x%#x, with value = 0x%#x \n", request.addr, __bswap_32(request.data));
#endif
         return response;
    case READ:
         response.status = uart_read(request.addr, response.data);
#ifndef UART_debug
      dbg_printf("Serial unit read accessed at: 0x%#x, with value = 0x%#x \n", request.addr, request.data);
#endif
         return response;
    default:
         response.status = ERROR;
#ifndef UART_debug
      dbg_printf("Serial unit wrongly accessed at: 0x%#x, with value = 0x%#x \n", request.addr, request.data);
#endif
         return response; 
  }
}

ac_tlm_rsp_status apbuart::uart_write(const uint32_t& addr , const uint32_t& data)
{

  uint32_t internal_address = addr & 0xFF;

  switch(internal_address){
    case DATA_OFFSET:     //!0x0
      DataR = DATA(data);
      return uart_transmitter();
    case STATUS_OFFSET:   //!0x28
      return SUCCESS;
    case INTERRUPT_CONTROL_OFFSET:  //!0x08
      InterruptR = data;
      return SUCCESS;
    case CONTROL_OFFSET:  //!0x18
      ControlR = data;
      return SUCCESS;
    case SCALER_OFFSET:   //!0xC
      ScalerR = data;
      return SUCCESS;
    default:
      return ERROR;
  }
}

ac_tlm_rsp_status apbuart::uart_read(const uint32_t& addr , uint32_t& data)
{

  uint32_t internal_address = addr & 0xFF;

  switch(internal_address){
    case DATA_OFFSET:     //!0x0
      data = DataR;
      //!if buffer is not empty we read the next char
      if(!buffer.empty())
      {
        DataR = (char) DATA(buffer.front());
        buffer.pop(); //!Remove the readed char
        if(InterruptR & RECEIVER_INTERRUPT_ENABLE) {
          //!Generate a interruption to processor
          generate_interrupt();
         }
      } else //!buffer is empty
      {
        StatusR &= ~DATA_READY;
        StatusR |= TRASMITTER_SHIFT_REGISTER_EMPTY;
        StatusR |= TRASMITTER_FIFO_EMPTY;  
        DataR = 0x0;
      }
      return SUCCESS;
    case STATUS_OFFSET:   //!0x28
      data = StatusR;
      return SUCCESS;
    case INTERRUPT_CONTROL_OFFSET:  //!0x08
      InterruptR = data;
      return SUCCESS;
    case CONTROL_OFFSET:  //!0x18
      ControlR = data;
      return SUCCESS;
    case SCALER_OFFSET:   //!0xC
      data = ScalerR;
      return SUCCESS;
    default:
      return ERROR;
  }
}

} //namespace grlib




