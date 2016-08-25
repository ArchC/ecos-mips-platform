/**
 * \file      apbuart.h
 * \author    Rogerio Alves Cardoso
 *            Jainesh Doshi
 *
 * \author    The ArchC Team
 *            http://www.archc.org/
 *
 *            Computer Systems Laboratory (LSC)
 *            IC-UNICAMP
 *            http://www.lsc.ic.unicamp.br/
 *
 * \version   1.0
 * \brief     Definition file. 
 *            Implements the Gaisler UART with APB interface IP (APBUART)
 *            
 *
 * \attention Copyright (C) 2002-2014 --- The ArchC Team
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

#ifndef _GRLIB_APBUART_H_
#define _GRLIB_APBUART_H_

#include <systemc.h>
#include <stdio.h>
#include <queue>

#include "serversocket.H"
#include "ac_tlm_protocol.H"
#include "ac_tlm_port.H"

//! Configured with atlas_serial.h

//! UART BASE ADDRESS       0xBF000900
//! 0xBF000400 is the ROM monitor!!

// UART Register offsets
#define DATA_OFFSET         0x0
#define STATUS_OFFSET       0x28
#define INTERRUPT_CONTROL_OFFSET 0x08
#define CONTROL_OFFSET      0x18
#define SCALER_OFFSET       0xC
#define FIFO_DEBUG_OFFSET   0x10

//!< APBUART bit macros
#define DATA(n)                           (n & 0xFF)

//! Line Status register bits
#define DATA_READY                        (1 << 0)
#define OVERRUN                           (1 << 1)
#define PARITY_ERROR                      (1 << 2)
#define FRAMING_ERROR                     (1 << 3)
#define TRANSMITTER_BREAK_RECEIVE         (1 << 4)
#define TRASMITTER_SHIFT_REGISTER_EMPTY   (1 << 5)
#define TRASMITTER_FIFO_EMPTY             (1 << 6)

//! Interrupt Control register bits
#define RECEIVER_ENABLE                   (1 << 0)
#define TRANSMITTER_ENABLE                (1 << 1)
#define RECEIVER_INTERRUPT_ENABLE         (1 << 2)
#define TRANSMITTER_INTERRUPT_ENABLE      (1 << 3)


#define TRANSMITTER_HALF_FULL             (1 << 7)
#define RECEIVER_HALF_FULL                (1 << 8)
#define TRANSMITTER_FULL                  (1 << 9)
#define RECEIVER_FULL                     (1 << 10)
#define TRANSMITTER_FIFO_COUNT(n)         (n & (0x3f << 20)) >> 20
#define RECEIVER_FIFO_COUNT(n)            (n & (0x3f << 26)) >> 26
#define PARITY_SELECT                     (1 << 4)
#define PARITY_ENABLE                     (1 << 5)
#define LOOP_BACK_MODE                    (1 << 7)
#define TRANSMITTER_FIFO_INTERRUPT_ENABLE (1 << 9)
#define TRANSMITTER_FIFO_RECEIVER_ENABLE  (1 << 10)
#define SCALER_RELOAD_VALUE(n)            (n & 0xFFF)

// Modify according to atlas serial
#define IRQ_SEND_ADDR 0x80000204

using std::queue;
using tlm::tlm_transport_if;

namespace grlib {

class apbuart : public sc_module,
public ac_tlm_transport_if {

private:
  
  uint32_t DataR;     //!< Data Register
  uint32_t StatusR;   //!< Status Register
  uint32_t ControlR;  //!< Line Control Register
  uint32_t InterruptR;  //!< Interrupt Control Register
  uint32_t ScalerR;   //!< Scaler Register
  uint32_t FIFODebugR; //!< FIFO Debug Register

  uint32_t socket_port;
  ServerSocket server;
  ServerSocket plug;

  /* Most of socket programs like netcat or telnet sent a string instead a
     character after press <enter>. So we need a buffer to hold the string
     and sent one char at time to UART.
  */
  queue<char> buffer;

public:

  sc_export< ac_tlm_transport_if > target_export;

  ac_tlm_port IRQ_port;

  /**
  * \brief UART write method
  * \param   addr const unsigned value correponding to the register address
  * \param   data const unsigned value correponding to the data to be write
  * \return  TLM response status SUCCESS or ERROR
  */
  ac_tlm_rsp_status uart_write(const uint32_t& addr , const uint32_t& data);

  /**
  * \brief UART read method
  * \param   addr const unsigned value correponding to the register address
  * \param   data const unsigned value correponding to the readed data
  * \return  TLM response status SUCCESS or ERROR
  */
  ac_tlm_rsp_status uart_read(const uint32_t& addr, uint32_t& data);  

  /**
  * \brief receive method. Checks if UART 
  *        receive any character from a external program
  * \note SC_THREAD
  */
  void uart_receive();

  /**
   * \brief UART Transmitter
   * \details Transmit a caracter, read from Data Register, to a serial 
   *          interface.
   * \return  TLM response status SUCCESS or ERROR
   */
  ac_tlm_rsp_status uart_transmitter();

  /**
  * \brief Implementation of TLM transport method that handle packets of the 
  *        protocol doing apropriate actions.
  * \param request is a received request packet
  * \return A response packet to be send
  */
  ac_tlm_rsp transport( const ac_tlm_req &request );


  /**
  * \brief Generate IRQ interrupt to processor
  * \return  TODO TLM response status SUCCESS or ERROR
  */
  void generate_interrupt();

  /**
  * \brief APBUART default constructor
  * \param   a string with the module name
  * \param   a unsigned value with the socket port where the connection
  *          will be done
  */
  apbuart(sc_module_name module_name, uint32_t socket_port = 6000U);

  /**
  * \brief APBUART default destructor
  */
  ~apbuart();
};
} // namespace grlib

#endif // _GRLIB_APBUART_H_
