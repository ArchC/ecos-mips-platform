/******************************************************
 * Interrupt Handlers header file.                    *
 * This file is automatically generated by ArchC      *
 * WITHOUT WARRANTY OF ANY KIND, either express       *
 * or implied.                                        *
 * For more information on ArchC, please visit:       *
 * http://www.archc.org                               *
 *                                                    *
 * The ArchC Team                                     *
 * Computer Systems Laboratory (LSC)                  *
 * IC-UNICAMP                                         *
 * http://www.lsc.ic.unicamp.br                       *
 ******************************************************/
 

#ifndef _MIPS_INTR_HANDLERS_H
#define _MIPS_INTR_HANDLERS_H

#include "ac_intr_handler.H"
#include "mips_parms.H"
#include "mips_arch.H"
#include "mips_arch_ref.H"

class mips_intp_handler :
  public ac_intr_handler,
  public mips_arch_ref
{
 public:

  explicit mips_intp_handler(mips_arch& ref) : mips_arch_ref(ref) {}

  void handle(uint32_t value, uint64_t addr);

};


#endif // _MIPS_INTR_HANDLERS_H
