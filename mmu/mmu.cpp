/**
 * @file      memory.cpp
 * @author    Bruno de Carvalho Albertini
 *
 * @author    The ArchC Team
 *            http://www.archc.org/
 *
 *            Computer Systems Laboratory (LSC)
 *            IC-UNICAMP
 *            http://www.lsc.ic.unicamp.br/
 *
 * @version   0.1
 * @date      Sun, 02 Apr 2006 08:07:46 -0200
 *
 * @brief     Implements a ac_tlm Memory Management Unit.
 *
 * @attention Copyright (C) 2002-2005 --- The ArchC Team
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
 *
 *
 */

//////////////////////////////////////////////////////////////////////////////
// Standard includes
// SystemC includes
// ArchC includes

#include "mmu.h"

//////////////////////////////////////////////////////////////////////////////

// Uncomment this for the debug model
#define MMU_DEBUG


/// Constructor
ac_tlm_mmu::ac_tlm_mmu(sc_module_name module_name):
  sc_module(module_name),
  target_export("iport"),
  BUS_port("BUS_port",0U) // This is the port that connects to the actual bus
{
  /// Binds target_export to the bus
  target_export(*this);

}

/// Destructor
ac_tlm_mmu::~ac_tlm_mmu()
{
}


/// This routine is for the translation of virtual addresses to real memory addresses
ac_tlm_rsp ac_tlm_mmu::transport(const ac_tlm_req &request)
{
  ac_tlm_rsp response;

// Check the address requested
  if(request.addr >= 0x80000000 && request.addr < 0xA0000000){
    //! kseg0 0x8000 0000-9FFF FFFF (512MB):
    //! These addresses are translated
    //! into physical addresses by merely stripping off the top bit and mapping
    //! them contiguously into the low 512MB of physical memory.
    //! Addresses in this region are almost always accessed through the cache,
    //! so they may not be used until the caches are properly initialized. They
    //! will be used for most programs and data in systems not using the MMU
    //! and will be used for the OS kernel for systems that do use the MMU.

    ac_tlm_req req = request;
    req.addr = request.addr - 0x80000000;
#ifndef MMU_DEBUG
//    cout << "Actual Address to Bus (Memory): "<< req.addr << endl;
#endif
    response = BUS_port->transport(req);
    return response;
  }

  else if(request.addr >= 0xA0000000 && request.addr < 0xC0000000){
    //! ksegl 0xA000 0000-BFFF FFFF (512MB):
    //! These addresses are mapped into physical addresses by stripping off the
    //! leading 3 bits, giving a duplicate mapping of the low 512MB of physical
    //! memory. But this time, access will not use the cache. Use this region to
    //! access your initial program ROM, and for I/O registers.

    ac_tlm_req req = request;
    req.addr = request.addr & 0x1FFFFFFF;
#ifndef MMU_DEBUG
    cout << "Actual Address to Bus (Memory): "<< req.addr << endl;
#endif
    response = BUS_port->transport(req);
    return response;
  }
  else {
    // Actual memory accessed
#ifndef MMU_DEBUG
//    cout <<"Address requested"<< request.addr << endl;
#endif
    response = BUS_port->transport(request);
    return response;
  }
}