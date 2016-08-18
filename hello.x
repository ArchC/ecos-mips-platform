
sw/hello.elf:     file format elf32-bigmips
sw/hello.elf
architecture: mips:isa32, flags 0x00000112:
EXEC_P, HAS_SYMS, D_PAGED
start address 0x800200bc

Program Header:
    LOAD off    0x00001000 vaddr 0x80020000 paddr 0x80020000 align 2**12
         filesz 0x000192f8 memsz 0x0001d3fd flags rwx
private flags = 50003001: [abi=EABI32] [mips32] [not 32bitmode] [noreorder]

Sections:
Idx Name          Size      VMA       LMA       File off  Algn
  0 .rom_vectors  000000cc  80020000  80020000  00001000  2**0
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
  1 .text         00017610  800200cc  800200cc  000010cc  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata       000018e0  800376e0  800376e0  000186e0  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .data         00000268  80038fc0  80038fc0  00019fc0  2**2
                  CONTENTS, ALLOC, LOAD, DATA
  4 .eh_frame     00000030  80039228  80039228  0001a228  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  5 .ctors        00000038  80039258  80039258  0001a258  2**2
                  CONTENTS, ALLOC, LOAD, DATA
  6 .dtors        00000028  80039290  80039290  0001a290  2**2
                  CONTENTS, ALLOC, LOAD, DATA
  7 .devtab       00000040  800392b8  800392b8  0001a2b8  2**3
                  CONTENTS, ALLOC, LOAD, DATA
  8 .sbss         0000000c  800392f8  800392f8  0001a2f8  2**2
                  ALLOC
  9 .bss          000040f5  80039308  80039308  0001a2f8  2**4
                  ALLOC
 10 .comment      00001059  00000000  00000000  0001a2f8  2**0
                  CONTENTS, READONLY
 11 .debug_aranges 00001990  00000000  00000000  0001b358  2**3
                  CONTENTS, READONLY, DEBUGGING
 12 .debug_pubnames 000042d3  00000000  00000000  0001cce8  2**0
                  CONTENTS, READONLY, DEBUGGING
 13 .debug_info   0006424f  00000000  00000000  00020fbb  2**0
                  CONTENTS, READONLY, DEBUGGING
 14 .debug_abbrev 0000e9a2  00000000  00000000  0008520a  2**0
                  CONTENTS, READONLY, DEBUGGING
 15 .debug_line   00011003  00000000  00000000  00093bac  2**0
                  CONTENTS, READONLY, DEBUGGING
 16 .debug_frame  0000371c  00000000  00000000  000a4bb0  2**2
                  CONTENTS, READONLY, DEBUGGING
 17 .debug_str    000098a1  00000000  00000000  000a82cc  2**0
                  CONTENTS, READONLY, DEBUGGING
 18 .debug_loc    0001406c  00000000  00000000  000b1b6d  2**0
                  CONTENTS, READONLY, DEBUGGING
 19 .reginfo      00000018  00000000  00000000  000c5bdc  2**2
                  CONTENTS, READONLY, LINK_ONCE_SAME_SIZE
 20 .pdr          00004ea0  00000000  00000000  000c5bf4  2**2
                  CONTENTS, READONLY
 21 .debug_ranges 00005a40  00000000  00000000  000caa98  2**3
                  CONTENTS, READONLY, DEBUGGING
 22 .gnu.attributes 00000010  00000000  00000000  000d04d8  2**0
                  CONTENTS, READONLY
SYMBOL TABLE:
80020000 l    d  .rom_vectors	00000000 .rom_vectors
800200cc l    d  .text	00000000 .text
800376e0 l    d  .rodata	00000000 .rodata
80038fc0 l    d  .data	00000000 .data
80039228 l    d  .eh_frame	00000000 .eh_frame
80039258 l    d  .ctors	00000000 .ctors
80039290 l    d  .dtors	00000000 .dtors
800392b8 l    d  .devtab	00000000 .devtab
800392f8 l    d  .sbss	00000000 .sbss
80039308 l    d  .bss	00000000 .bss
00000000 l    d  .comment	00000000 .comment
00000000 l    d  .debug_aranges	00000000 .debug_aranges
00000000 l    d  .debug_pubnames	00000000 .debug_pubnames
00000000 l    d  .debug_info	00000000 .debug_info
00000000 l    d  .debug_abbrev	00000000 .debug_abbrev
00000000 l    d  .debug_line	00000000 .debug_line
00000000 l    d  .debug_frame	00000000 .debug_frame
00000000 l    d  .debug_str	00000000 .debug_str
00000000 l    d  .debug_loc	00000000 .debug_loc
00000000 l    d  .reginfo	00000000 .reginfo
00000000 l    d  .pdr	00000000 .pdr
00000000 l    d  .debug_ranges	00000000 .debug_ranges
00000000 l    d  .gnu.attributes	00000000 .gnu.attributes
800200cc l       .rom_vectors	00000000 reset_vector_end
800200bc l       .rom_vectors	00000000 debug_vector_end
800200a4 l       .rom_vectors	00000000 other_vector_end
80020024 l       .rom_vectors	00000000 utlb_vector_end
8003a310 l       .bss	00000000 __interrupt_stack
800201c4 l       .text	00000000 _start_end
800201cc l       .text	00000000 __warm_start_end
80020220 l       .text	00000000 __nmi_entry_end
800204fc l       .text	00000000 restore_state
80020328 l       .text	00000000 __default_exception_vsr_end
80039310 l       .bss	00000000 __interrupt_stack_base
80020628 l       .text	00000000 hal_intc_translation_table
80020628 l       .text	00000000 __default_interrupt_vsr_end
800206e4 l       .text	00000000 hal_interrupt_stack_call_pending_DSRs_end
800206ec l       .text	00000000 __gccmain_end
80020718 l       .text	00000000 hal_program_new_stack_end
80020790 l       .text	00000000 hal_zero_bss_end
800207dc l       .text	00000000 __break_vsr_springboard_end
00000000 l    df *ABS*	00000000 hello.c
00000000 l    df *ABS*	00000000 /home/jaineshdoshi/ecos/ecos-3.0/packages/io/common/v3_0/src/ioinit.cxx
80022844 l     F .text	00000008 _GLOBAL__I.49000_ioinit.cxx
00000000 l    df *ABS*	00000000 /home/jaineshdoshi/ecos/ecos-3.0/packages/io/serial/v3_0/src/common/serial.c
8002284c l     F .text	00000008 serial_select
80022854 l     F .text	00000014 serial_set_config
80022868 l     F .text	00000078 serial_rcv_char
800228e0 l     F .text	00000108 serial_xmt_char
800229e8 l     F .text	000000c4 serial_init
80022aac l     F .text	0000031c serial_get_config
80022dc8 l     F .text	000001b0 serial_read
80022f78 l     F .text	000001f8 serial_write
00000000 l    df *ABS*	00000000 /home/jaineshdoshi/ecos/ecos-3.0/packages/io/serial/v3_0/src/common/tty.c
80023170 l     F .text	0000001c tty_init
8002318c l     F .text	00000014 tty_lookup
800231a0 l     F .text	00000048 tty_set_config
800231e8 l     F .text	00000050 tty_get_config
80023238 l     F .text	0000000c tty_select
80023244 l     F .text	00000220 tty_read
80023464 l     F .text	00000160 tty_write
80039114 l     O .data	0000001c tty_devio
8003a330 l     O .bss	0000000c tty_private_info_diag
00000000 l    df *ABS*	00000000 /home/jaineshdoshi/ecos/ecos-3.0/packages/io/serial/v3_0/src/common/haldiag.c
800235c4 l     F .text	00000008 haldiag_init
800235cc l     F .text	00000044 haldiag_set_config
80037778 l     O .rodata	00000013 __FUNCTION__.2634
80023610 l     F .text	00000020 haldiag_getc
80023630 l     F .text	00000024 haldiag_putc
80039130 l     O .data	000000a4 haldiag_channel0
800391d4 l     O .data	00000014 haldiag_funs
8003a33c l     O .bss	00000004 _no_data
00000000 l    df *ABS*	00000000 /home/jaineshdoshi/ecos/ecos-3.0/packages/language/c/libc/startup/v3_0/src/cstartup.cxx
8003a340 l     O .bss	00000004 _ZZ15cyg_iso_c_startE11initialized
8002367c l     F .text	00000008 _GLOBAL__I.56100_cyg_iso_c_start
00000000 l    df *ABS*	00000000 /home/jaineshdoshi/ecos/ecos-3.0/packages/hal/mips/arch/v3_0/src/hal_misc.c
8003778c l     O .rodata	00000040 tab.1775
00000000 l    df *ABS*	00000000 /home/jaineshdoshi/ecos/ecos-3.0/packages/hal/mips/mips32/v3_0/src/var_misc.c
00000000 l    df *ABS*	00000000 /home/jaineshdoshi/ecos/ecos-3.0/packages/hal/mips/atlas/v3_0/src/plf_misc.c
00000000 l    df *ABS*	00000000 /home/jaineshdoshi/ecos/ecos-3.0/packages/io/pci/v3_0/src/pci.c
8003a348 l     O .bss	00000008 cyg_pci_memory_base
8003a350 l     O .bss	00000004 cyg_pci_io_base
8003a344 l     O .bss	00000004 cyg_pci_lib_initialized
00000000 l    df *ABS*	00000000 /home/jaineshdoshi/ecos/ecos-3.0/packages/io/pci/v3_0/src/pci_hw.c
00000000 l    df *ABS*	00000000 /home/jaineshdoshi/ecos/ecos-3.0/packages/hal/common/v3_0/src/hal_if.c
80025c88 l     F .text	000000ac delay_us
80025d34 l     F .text	00000048 cyg_hal_diag_mangler_gdb_getc
80025d7c l     F .text	00000070 cyg_hal_diag_mangler_gdb_read
80026698 l     F .text	00000070 cyg_hal_diag_mangler_gdb_write
80026618 l     F .text	00000080 cyg_hal_diag_mangler_gdb_putc
800265a4 l     F .text	00000074 cyg_hal_diag_mangler_gdb_control
80025e7c l     F .text	00000048 cyg_hal_diag_mangler_null_getc
80025ec4 l     F .text	0000004c cyg_hal_diag_mangler_null_putc
80025f10 l     F .text	00000070 cyg_hal_diag_mangler_null_write
80025f80 l     F .text	00000070 cyg_hal_diag_mangler_null_read
80025ff0 l     F .text	00000028 cyg_hal_diag_mangler_null_control
8003a354 l     O .bss	00000001 called.1936
800261a8 l     F .text	00000028 reset
80026380 l     F .text	00000224 cyg_hal_diag_mangler_gdb_flush
8003a358 l     O .bss	00000004 __mangler_pos
800377cc l     O .rodata	00000011 hex.1780
8003a35c l     O .bss	00000064 __mangler_line
00000000 l    df *ABS*	00000000 /home/jaineshdoshi/ecos/ecos-3.0/packages/hal/common/v3_0/src/hal_misc.c
00000000 l    df *ABS*	00000000 /home/jaineshdoshi/ecos/ecos-3.0/packages/io/common/v3_0/src/iosys.c
8003a3c0 l     O .bss	00000004 _init.2124
00000000 l    df *ABS*	00000000 /home/jaineshdoshi/ecos/ecos-3.0/packages/infra/v3_0/src/startup.cxx
00000000 l    df *ABS*	00000000 /home/jaineshdoshi/ecos/ecos-3.0/packages/infra/v3_0/src/prestart.cxx
00000000 l    df *ABS*	00000000 /home/jaineshdoshi/ecos/ecos-3.0/packages/infra/v3_0/src/pkgstart.cxx
00000000 l    df *ABS*	00000000 /home/jaineshdoshi/ecos/ecos-3.0/packages/infra/v3_0/src/userstart.cxx
00000000 l    df *ABS*	00000000 /home/jaineshdoshi/ecos/ecos-3.0/packages/infra/v3_0/src/diag.cxx
800391e8 l     O .data	00000004 _ZL5_putc
80026c10 l     F .text	000000fc _ZL4_cvtyPclS_
80026d0c l     F .text	00000040 _ZL6_sputccPPv
80026f20 l     F .text	00000008 _GLOBAL__I.10100_diag_write_char
80026f74 l     F .text	0000000c _ZL16_diag_write_charcPPv
8002719c l     F .text	000007ec _ZL8_vprintfPFvcPPvES0_PKcS_
00000000 l    df *ABS*	00000000 /home/jaineshdoshi/ecos/ecos-3.0/packages/kernel/v3_0/src/common/kapi.cxx
00000000 l    df *ABS*	00000000 /home/jaineshdoshi/ecos/ecos-3.0/packages/kernel/v3_0/src/common/thread.cxx
800391f0 l     O .data	00000002 _ZL14next_unique_id
8003a478 l     O .bss	00000800 _ZL17idle_thread_stack
80029a04 l     F .text	00000044 _Z41__static_initialization_and_destruction_0ii
80029a48 l     F .text	0000000c _GLOBAL__D.11100__ZN18Cyg_HardwareThread12thread_entryEP10Cyg_Thread
80029a54 l     F .text	0000000c _GLOBAL__I.11100__ZN18Cyg_HardwareThread12thread_entryEP10Cyg_Thread
00000000 l    df *ABS*	00000000 /home/jaineshdoshi/ecos/ecos-3.0/packages/kernel/v3_0/src/common/except.cxx
80029d98 l     F .text	0000001c _GLOBAL__I.12000__Z26cyg_null_exception_handlerjij
00000000 l    df *ABS*	00000000 /home/jaineshdoshi/ecos/ecos-3.0/packages/kernel/v3_0/src/intr/intr.cxx
8002a544 l     F .text	00000010 _GLOBAL__I.12000__ZN13Cyg_Interrupt15disable_counterE
8002a554 l     F .text	00000008 _GLOBAL__D.12000__ZN13Cyg_Interrupt15disable_counterE
00000000 l    df *ABS*	00000000 /home/jaineshdoshi/ecos/ecos-3.0/packages/kernel/v3_0/src/sched/mlqueue.cxx
00000000 l    df *ABS*	00000000 /home/jaineshdoshi/ecos/ecos-3.0/packages/kernel/v3_0/src/sched/sched.cxx
8002acb0 l     F .text	0000009c _Z41__static_initialization_and_destruction_0ii
8002ad4c l     F .text	0000000c _GLOBAL__D.11000_cyg_scheduler_sched_lock
8002ad58 l     F .text	0000000c _GLOBAL__I.11000_cyg_scheduler_sched_lock
00000000 l    df *ABS*	00000000 /home/jaineshdoshi/ecos/ecos-3.0/packages/kernel/v3_0/src/sync/cnt_sem.cxx
00000000 l    df *ABS*	00000000 /home/jaineshdoshi/ecos/ecos-3.0/packages/kernel/v3_0/src/sync/flag.cxx
00000000 l    df *ABS*	00000000 /home/jaineshdoshi/ecos/ecos-3.0/packages/kernel/v3_0/src/sync/mbox.cxx
00000000 l    df *ABS*	00000000 /home/jaineshdoshi/ecos/ecos-3.0/packages/kernel/v3_0/src/sync/mutex.cxx
00000000 l    df *ABS*	00000000 /home/jaineshdoshi/ecos/ecos-3.0/packages/kernel/v3_0/src/debug/dbg-thread-demux.c
8002d38c l     F .text	00000158 dbg_thread_syscall_rmt
00000000 l    df *ABS*	00000000 /home/jaineshdoshi/ecos/ecos-3.0/packages/kernel/v3_0/src/debug/dbg_gdb.cxx
8003ad28 l     O .bss	0000003c _ZZ14dbg_threadinfoE8statebuf
00000000 l    df *ABS*	00000000 /home/jaineshdoshi/ecos/ecos-3.0/packages/language/c/libc/startup/v3_0/src/mainthread.cxx
8002db64 l     F .text	00000060 _Z41__static_initialization_and_destruction_0ii
8003ae10 l     O .bss	00002000 _ZL19cyg_libc_main_stack
8002dbc4 l     F .text	0000000c _GLOBAL__D.56000_cyg_libc_main_thread
8002dbd0 l     F .text	0000000c _GLOBAL__I.56000_cyg_libc_main_thread
00000000 l    df *ABS*	00000000 /home/jaineshdoshi/ecos/ecos-3.0/packages/language/c/libc/stdio/v3_0/src/common/stdioinlines.cxx
00000000 l    df *ABS*	00000000 /home/jaineshdoshi/ecos/mips32r2_4kc_be/install/include/cyg/libc/stdio/stream.inl
8002df2c l     F .text	00000148 _Z41__static_initialization_and_destruction_0ii
8002e074 l     F .text	0000000c _GLOBAL__D.56001_cyg_libc_stdio_stdout
8002e080 l     F .text	0000000c _GLOBAL__I.56001_cyg_libc_stdio_stdout
00000000 l    df *ABS*	00000000 /home/jaineshdoshi/ecos/mips32r2_4kc_be/install/include/cyg/libc/stdio/stream.hxx
00000000 l    df *ABS*	00000000 /home/jaineshdoshi/ecos/ecos-3.0/packages/language/c/libc/stdio/v3_0/src/common/streambuf.cxx
00000000 l    df *ABS*	00000000 /home/jaineshdoshi/ecos/ecos-3.0/packages/language/c/libc/stdio/v3_0/src/common/vsnprintf.cxx
00000000 l    df *ABS*	00000000 /home/jaineshdoshi/ecos/mips32r2_4kc_be/install/include/cyg/libc/stdio/stream.inl
8003810c l     O .rodata	00000022 _ZZ7vfscanfE7basefix
00000000 l    df *ABS*	00000000 /home/jaineshdoshi/ecos/ecos-3.0/packages/language/c/libc/stdio/v3_0/src/output/fprintf.cxx
00000000 l    df *ABS*	00000000 /home/jaineshdoshi/ecos/mips32r2_4kc_be/install/include/cyg/libc/stdio/stream.inl
00000000 l    df *ABS*	00000000 /home/jaineshdoshi/ecos/mips32r2_4kc_be/install/include/cyg/libc/stdio/stream.inl
00000000 l    df *ABS*	00000000 /home/jaineshdoshi/ecos/mips32r2_4kc_be/install/include/cyg/libc/stdio/stream.inl
80030b88 l     F .text	000001dc _ZL5rounddPiPcS0_cS0_
800391f8 l     O .data	00000010 _ZZ9vfnprintfE6zeroes
80039208 l     O .data	00000010 _ZZ9vfnprintfE6blanks
00000000 l    df *ABS*	00000000 /home/jaineshdoshi/ecos/ecos-3.0/packages/language/c/libc/stdlib/v3_0/src/strtod.cxx
80032b1c l     F .text	000000fc _ZL5exp10j
80038378 l     O .rodata	00000028 _ZZL5exp10jE6powtab
00000000 l    df *ABS*	00000000 /home/jaineshdoshi/ecos/ecos-3.0/packages/language/c/libc/stdlib/v3_0/src/strtol.cxx
00000000 l    df *ABS*	00000000 /home/jaineshdoshi/ecos/ecos-3.0/packages/language/c/libc/stdlib/v3_0/src/strtoul.cxx
00000000 l    df *ABS*	00000000 /home/jaineshdoshi/ecos/ecos-3.0/packages/language/c/libc/stdlib/v3_0/src/strtoll.cxx
00000000 l    df *ABS*	00000000 /home/jaineshdoshi/ecos/ecos-3.0/packages/language/c/libc/stdlib/v3_0/src/strtoull.cxx
00000000 l    df *ABS*	00000000 /home/jaineshdoshi/ecos/ecos-3.0/packages/language/c/libc/string/v3_0/src/memchr.cxx
00000000 l    df *ABS*	00000000 /home/jaineshdoshi/ecos/ecos-3.0/packages/language/c/libc/string/v3_0/src/strlen.cxx
00000000 l    df *ABS*	00000000 /home/jaineshdoshi/ecos/ecos-3.0/packages/language/c/libc/string/v3_0/src/strsuppt.cxx
00000000 l    df *ABS*	00000000 /home/jaineshdoshi/ecos/mips32r2_4kc_be/install/include/pkgconf/libm.h
00000000 l    df *ABS*	00000000 /home/jaineshdoshi/ecos/ecos-3.0/packages/language/c/libm/v3_0/src/double/portable-api/s_modf.c
00000000 l    df *ABS*	00000000 /home/jaineshdoshi/ecos/ecos-3.0/packages/error/v3_0/src/strerror.cxx
00000000 l    df *ABS*	00000000 /home/jaineshdoshi/ecos/ecos-3.0/packages/error/v3_0/src/errno.cxx
00000000 l    df *ABS*	00000000 /home/jaineshdoshi/ecos/ecos-3.0/packages/infra/v3_0/src/memcpy.c
00000000 l    df *ABS*	00000000 /home/jaineshdoshi/ecos/ecos-3.0/packages/infra/v3_0/src/delete.cxx
00000000 l    df *ABS*	00000000 /home/jaineshdoshi/ecos/ecos-3.0/packages/kernel/v3_0/src/common/clock.cxx
8003451c l     F .text	00000998 _ZL19construct_converterPN9Cyg_Clock9converterEyyyy
80038f58 l     O .rodata	00000060 _ZZL19construct_converterPN9Cyg_Clock9converterEyyyyE6primes
800352c0 l     F .text	000000a8 _Z41__static_initialization_and_destruction_0ii
80035368 l     F .text	0000000c _GLOBAL__D.14000__ZN9Cyg_Clock15real_time_clockE
80035374 l     F .text	0000000c _GLOBAL__I.14000__ZN9Cyg_Clock15real_time_clockE
00000000 l    df *ABS*	00000000 /home/jaineshdoshi/ecos/ecos-3.0/packages/services/memalloc/common/v3_0/src/malloc.cxx
00000000 l    df *ABS*	00000000 heaps.cxx
80035d38 l     F .text	0000014c _Z41__static_initialization_and_destruction_0ii
80035e84 l     F .text	0000000c _GLOBAL__D.19900_cygmem_pool_heap1
80035e90 l     F .text	0000000c _GLOBAL__I.19900_cygmem_pool_heap1
00000000 l    df *ABS*	00000000 /home/jaineshdoshi/ecos/ecos-3.0/packages/language/c/libc/startup/v3_0/src/invokemain.cxx
00000000 l    df *ABS*	00000000 /home/jaineshdoshi/ecos/mips32r2_4kc_be/install/include/cyg/libc/stdio/stream.inl
00000000 l    df *ABS*	00000000 /home/jaineshdoshi/ecos/mips32r2_4kc_be/install/include/cyg/libc/stdio/stream.inl
00000000 l    df *ABS*	00000000 /home/jaineshdoshi/ecos/mips32r2_4kc_be/install/include/cyg/libc/stdio/stream.inl
80036228 l     F .text	00000148 _Z41__static_initialization_and_destruction_0ii
80036370 l     F .text	0000000c _GLOBAL__D.56002_cyg_libc_stdio_stderr
8003637c l     F .text	0000000c _GLOBAL__I.56002_cyg_libc_stdio_stderr
00000000 l    df *ABS*	00000000 /home/jaineshdoshi/ecos/mips32r2_4kc_be/install/include/cyg/libc/stdio/stream.inl
80036388 l     F .text	00000148 _Z41__static_initialization_and_destruction_0ii
800364d0 l     F .text	0000000c _GLOBAL__D.56000_cyg_libc_stdio_stdin
800364dc l     F .text	0000000c _GLOBAL__I.56000_cyg_libc_stdio_stdin
00000000 l    df *ABS*	00000000 /home/jaineshdoshi/ecos/mips32r2_4kc_be/install/include/cyg/libc/stdio/stream.inl
800364e8 l     F .text	0000003c _Z41__static_initialization_and_destruction_0ii
80036524 l     F .text	0000000c _GLOBAL__D.56000__ZN20Cyg_libc_stdio_files5filesE
80036530 l     F .text	0000000c _GLOBAL__I.56000__ZN20Cyg_libc_stdio_files5filesE
00000000 l    df *ABS*	00000000 /home/jaineshdoshi/ecos/mips32r2_4kc_be/install/include/cyg/libc/stdio/stream.inl
00000000 l    df *ABS*	00000000 /home/jaineshdoshi/ecos/mips32r2_4kc_be/install/include/cyg/libc/stdio/stream.inl
00000000 l    df *ABS*	00000000 /home/jaineshdoshi/ecos/ecos-3.0/packages/infra/v3_0/src/memset.c
00000000 l    df *ABS*	00000000 /home/jaineshdoshi/ecos/ecos-3.0/packages/services/memalloc/common/v3_0/src/dlmalloc.cxx
00000000 l    df *ABS*	00000000 /home/jaineshdoshi/ecos/ecos-3.0/packages/language/c/libc/startup/v3_0/src/exit.cxx
00000000 l    df *ABS*	00000000 /home/jaineshdoshi/ecos/ecos-3.0/packages/language/c/libc/string/v3_0/src/memmove.cxx
00000000 l    df *ABS*	00000000 /home/jaineshdoshi/ecos/ecos-3.0/packages/language/c/libc/startup/v3_0/src/_exit.cxx
00000000 l    df *ABS*	00000000 /home/jaineshdoshi/ecos/ecos-3.0/packages/language/c/libc/startup/v3_0/src/atexit.cxx
8003d360 l     O .bss	00000004 _ZL30cyg_libc_atexit_handlers_count
8003d364 l     O .bss	00000080 _ZL24cyg_libc_atexit_handlers
80021224 l     F .text	00000468 _fpadd_parts
80030a98 g     F .text	0000000c putchar
80027130 g     F .text	00000030 diag_write_dec
80025b0c g     F .text	000000a0 cyg_pcihw_translate_interrupt
80028168 g     F .text	00000038 cyg_mbox_create
8002a9f4 g     F .text	000000d0 _ZN28Cyg_Scheduler_Implementation10add_threadEP10Cyg_Thread
8002ac90 g     F .text	00000020 _ZN28Cyg_Scheduler_Implementation15set_idle_threadEP10Cyg_Threadj
800280b0 g     F .text	00000008 cyg_flag_maskbits
800392b8 g     O .devtab	00000000 __DEVTAB__
8002c9d8 g     F .text	0000000c _ZN22Cyg_Condition_VariableC1ER9Cyg_Mutex
8002af08 g     F .text	00000114 _ZN13Cyg_Scheduler12unlock_innerEj
80034eb4 g     F .text	00000038 _ZN9Cyg_Clock28get_other_to_clock_converterEyPNS_9converterE
800350a4 g     F .text	00000100 _ZN11Cyg_Counter9add_alarmEP9Cyg_Alarm
80028314 g     F .text	00000008 cyg_interrupt_attach
8002a934 g     F .text	0000005c _ZN30Cyg_ThreadQueue_Implementation7dequeueEv
80029ae4 g     F .text	000000a0 _ZN10Cyg_Thread14new_data_indexEv
80029b84 g     F .text	000000b4 _ZN10Cyg_Thread7releaseEv
80038fc0 g     O .data	00000000 hal_interrupt_handlers
800200a4 g     F .rom_vectors	00000018 debug_vector
8003ac8c g     O .bss	00000004 _ZN13Cyg_Interrupt8dsr_listE
8002dbdc g     F .text	00000018 vscanf
8002cc98 g     F .text	000000d0 _ZN9Cyg_Mutex7trylockEv
8002a990 g     F .text	00000064 _ZN30Cyg_ThreadQueue_Implementation6removeEP10Cyg_Thread
80027e0c g     F .text	00000018 cyg_thread_get_data_ptr
80037ca0 g     O .rodata	00000004 stdout
8002e08c  w    F .text	00000010 _ZN16Cyg_OutputStreamD1Ev
8002dcc8 g     F .text	00000018 vsprintf
80038fc0 g       .data	00000000 _fdata
800280c8 g     F .text	00000008 cyg_flag_init
80027dd0 g     F .text	00000008 cyg_thread_get_current_priority
8002e09c g     F .text	00000008 _ZN16Cyg_OutputStream5writeEPKhjPj
80028214 g     F .text	00000008 cyg_clock_delete
80028138 g     F .text	00000008 cyg_mbox_put
80027e40 g     F .text	00000008 cyg_interrupt_set_cpu
80028024 g     F .text	00000008 cyg_mutex_trylock
8002ae3c g     F .text	0000001c _ZN15Cyg_SchedThread24relay_inherited_priorityEP10Cyg_ThreadP15Cyg_ThreadQueue
8002c9f0 g     F .text	0000000c _ZN22Cyg_Condition_VariableC1Ev
80036560 g     F .text	000000e0 ungetc
800239f4 g     F .text	00000018 hal_atlas_reset
8002e18c g     F .text	000002a0 _ZN15Cyg_StdioStream5writeEPKhjPj
8002ae30 g     F .text	0000000c _ZN15Cyg_SchedThread16inherit_priorityEP10Cyg_Thread
80023b50 g     F .text	00000054 cyg_hal_plf_pci_cfg_write_dword
800208a0 g     F .text	0000003c hal_setjmp
80023654 g     F .text	00000028 cyg_iso_c_start
800392f8 g     O .sbss	00000004 cyg_hal_clock_period
80033e64  w    F .text	00000318 strerror
800248ec g     F .text	00000704 cyg_pci_get_device_info
8002aef8 g     F .text	00000010 _ZN13Cyg_Scheduler5startEv
8002bda0 g     F .text	00000014 _ZN8Cyg_MboxC1Ev
80029d20 g     F .text	00000014 _ZN21Cyg_Exception_ControlC2Ev
80027d90 g     F .text	00000010 cyg_thread_self
800375b8  w    F .text	0000006c memmove
80028280 g     F .text	0000003c cyg_counter_create
800247d4 g     F .text	000000fc cyg_pci_find_device
80034414 g     F .text	00000034 _ZN9Cyg_ClockC2ENS_14cyg_resolutionE
80024114 g     F .text	00000128 cyg_pci_allocate_memory_priv
800242e8 g     F .text	0000002c cyg_pci_translate_interrupt
80026b0c g     F .text	0000003c cyg_io_get_config
800279f4 g     F .text	00000144 diag_dump_buf_with_offset_16bit
80029db4 g     F .text	0000001c cyg_hal_deliver_exception
80026b8c g     F .text	00000008 cyg_devio_cread
8003447c g     F .text	00000050 _ZN9Cyg_ClockD2Ev
8002830c g     F .text	00000008 cyg_interrupt_detach
80023c48 g     F .text	000000a4 cyg_hal_plf_pci_cfg_write_byte
8002ad64 g     F .text	0000003c _ZN15Cyg_SchedThread24clear_inherited_priorityEv
80021d94 g     F .text	00000084 __gtdf2
80020668 g     F .text	0000007c hal_interrupt_stack_call_pending_DSRs
800282f4 g     F .text	00000008 cyg_interrupt_disable
80020328 g     F .text	00000300 __default_interrupt_vsr
8002a37c g     F .text	0000004c _ZN13Cyg_Interrupt24mask_interrupt_intunsafeEj
80029d88 g     F .text	00000010 _ZN21Cyg_Exception_Control17deliver_exceptionEij
8002a4d4 g     F .text	00000068 _ZN13Cyg_Interrupt21acknowledge_interruptEj
80027cb0 g     F .text	00000058 diag_snprintf
8002efe0 g     F .text	000000cc _ZN15Cyg_StdioStreamC2EPvNS_8OpenModeEiiijPh
80027dd8 g     F .text	00000008 cyg_thread_deadline_wait
8002ae60 g     F .text	00000034 _ZN15Cyg_SchedThreadC1EP10Cyg_Threadj
8002d654 g     F .text	000002a0 dbg_threadinfo
80029e18 g     F .text	00000054 _ZN13Cyg_InterruptD2Ev
800376dc g       *ABS*	00000000 _etext
8002c97c g     F .text	00000050 _ZN9Cyg_MutexD1Ev
80026a74 g     F .text	0000003c cyg_io_bwrite
8003ad68 g     O .bss	000000a8 cyg_libc_main_thread
8002213c g     F .text	0000002c __make_fp
800412f0 g       *ABS*	00000000 _gp
800391ec g     O .data	00000004 _ZN10Cyg_Thread15thread_data_mapE
8002c8e4 g     F .text	00000018 _ZN9Cyg_MutexC1Ev
800201c4 g     F .text	00000008 __warm_start
8002be4c g     F .text	00000098 _ZN8Cyg_MboxD1Ev
800280c0 g     F .text	00000008 cyg_flag_destroy
8002cf3c g     F .text	0000009c _ZN9Cyg_Mutex7releaseEv
8003578c g     F .text	00000070 _ZN9Cyg_Alarm7disableEv
80024768 g     F .text	0000006c cyg_pci_find_class
80027f60 g     F .text	0000000c cyg_spinlock_test
80028100 g     F .text	00000008 cyg_semaphore_trywait
80020844 g     O .text	00000000 hal_thread_load_context
8003ac90 g     O .bss	00000004 _ZN13Cyg_Interrupt13dsr_list_tailE
800283f0 g     F .text	00000050 cyg_scheduler_unlock
8002ba00 g     F .text	00000194 _ZN8Cyg_Flag4waitEjh
80026bb4 g     F .text	00000008 cyg_devio_set_config
8002711c g     F .text	00000014 diag_write_hex
80034190  w    F .text	00000124 memcpy
8002e58c g     F .text	000001cc _ZN15Cyg_StdioStream9read_byteEPh
80025be0 g     F .text	00000010 cyg_pcihw_write_config_uint32
800360e0 g     F .text	00000148 setvbuf
80028324 g     F .text	0000005c cyg_interrupt_create
8002cfd8 g     F .text	0000013c _ZN9Cyg_Mutex6unlockEv
800261d0 g     F .text	000000c0 hal_ctrlc_check
80027fd4 g     F .text	00000008 cyg_cond_timed_wait
80028d34 g     F .text	00000094 _ZN10Cyg_Thread5sleepEv
80025c80 g     F .text	00000008 cyg_pcihw_init
8002b110 g     F .text	00000050 _ZN22Cyg_Counting_SemaphoreD1Ev
80029dd0 g     F .text	00000024 _ZN13Cyg_InterruptC2EjijPFjjjEPFvjjjE
80021f08 g     F .text	000000ac __floatsidf
8002d598 g     F .text	000000bc dbg_threadlist
8002dbf4 g     F .text	0000008c perror
80021e18 g     F .text	00000090 __ltdf2
8002f0ac g     F .text	000000c0 _ZN21Cyg_StdioStreamBuffer10set_bufferEjPh
800238d8 g     F .text	0000009c hal_c_cache_init
800392b8 g       .dtors	00000000 __DTOR_END__
80023ba4 g     F .text	000000a4 cyg_hal_plf_pci_cfg_write_word
8002ab94 g     F .text	0000007c _ZN30Cyg_SchedThread_Implementation12rotate_queueEi
800270f4 g     F .text	00000028 diag_write_num
800296a8 g     F .text	00000114 _ZN10Cyg_Thread4killEv
8002ee2c g     F .text	000000e8 _ZN15Cyg_StdioStreamC2ENS_8OpenModeEjPh
80026bbc  w    F .text	00000028 cyg_start
8002dc80 g     F .text	00000048 puts
8002b69c g     F .text	000000c8 _ZN8Cyg_Flag4pollEjh
80028ecc g     F .text	00000144 _ZN10Cyg_Thread13counted_sleepEy
8003653c g     F .text	00000024 Cyg_libc_stdio_find_filename
80026824 g     F .text	000000ac cyg_io_init
8002ada0 g     F .text	00000008 _ZN15Cyg_SchedThread22clear_priority_ceilingEv
8003d3e4 g     O .bss	00000019 hal_interrupt_level
800284d4 g     F .text	00000068 cyg_thread_delete
80026b94 g     F .text	00000008 cyg_devio_bwrite
80027d80 g     F .text	00000010 cyg_scheduler_read_lock
00000000         *UND*	00000000 cyg_instrument
80035a48 g     F .text	00000084 malloc
8002f224  w    F .text	000000f0 _ZN15Cyg_StdioStream12set_positionEii
80025c04 g     F .text	00000014 cyg_pcihw_write_config_uint8
8002d37c g     F .text	00000010 patch_dbg_syscalls
80029df4 g     F .text	00000024 _ZN13Cyg_InterruptC1EjijPFjjjEPFvjjjE
80028458 g     F .text	00000008 cyg_thread_set_priority
800334d0 g     F .text	00000354 strtoll
8002f1f0 g     F .text	00000034 vsnprintf
80029010 g     F .text	000000c4 _ZN10Cyg_Thread13counted_sleepEv
80034eec g     F .text	00000040 _ZN9Cyg_Clock28get_clock_to_other_converterEyPNS_9converterE
80027b40 g     F .text	00000128 diag_dump_buf_with_offset_32bit
80037cd8  w    O .rodata	00000018 _ZTV19Cyg_VsnprintfStream
800206e4 g     F .text	00000008 __gccmain
8003ce54 g     O .bss	00000004 _ZN9Cyg_Clock15real_time_clockE
80028004 g     F .text	00000008 cyg_mutex_set_protocol
80028128 g     F .text	00000008 cyg_mbox_tryput
80027de8 g     F .text	00000008 cyg_thread_get_stack_size
80029f8c g     F .text	00000008 cyg_interrupt_call_pending_DSRs
8002aec8 g     F .text	00000030 _ZN13Cyg_Scheduler9start_cpuEv
80030d64 g     F .text	00001db8 vfnprintf
8002934c g     F .text	000001bc _ZN10Cyg_Thread12set_priorityEi
80039218 g     O .data	00000008 rtc_resolution
80033298 g     F .text	00000238 strtoul
8002bdb4 g     F .text	00000098 _ZN8Cyg_MboxD2Ev
80027160 g     F .text	0000003c diag_write_string
80026018 g     F .text	00000090 cyg_hal_diag_mangler_null_init
800279a0 g     F .text	00000054 diag_printf
80028148 g     F .text	00000008 cyg_mbox_tryget
80025c18 g     F .text	00000034 cyg_pcihw_read_config_uint32
8002daac g     F .text	000000b8 dbg_scheduler
80028dc8 g     F .text	00000104 _ZN10Cyg_Thread5delayEy
8002368c g     F .text	00000058 cyg_hal_invoke_constructors
80035380 g     F .text	000000d4 _ZN17Cyg_RealTimeClockC2Ev
80029d34 g     F .text	00000014 _ZN21Cyg_Exception_ControlC1Ev
8002869c g     F .text	000000e0 cyg_thread_get_info
80039310 g     O .bss	00000000 cyg_interrupt_stack_base
80027eec g     F .text	00000008 cyg_flag_peek
8003ac84 g     O .bss	00000004 _ZN13Cyg_Interrupt26interrupt_disable_spinlockE
800237a8 g     F .text	0000006c hal_delay_us
800242a8 g     F .text	00000020 cyg_pci_write_config_uint8
8003a3c4 g     O .bss	00000004 _ZN10Cyg_Thread11thread_listE
800288b8 g     F .text	00000020 _ZN10Cyg_Thread17deliver_exceptionEij
800367cc g     F .text	00000088 _ZN35Cyg_Mempool_dlmalloc_ImplementationC1EPhij
80026d4c g     F .text	000001ac diag_vdump_buf_with_offset
8003d2e8 g     O .bss	00000044 cyg_libc_stdio_stdin
8002c92c g     F .text	00000050 _ZN9Cyg_MutexD2Ev
800236e4 g     F .text	00000038 hal_lsbit_index
80036744 g     F .text	00000088 _ZN35Cyg_Mempool_dlmalloc_ImplementationC2EPhij
8002b168 g     F .text	00000158 _ZN22Cyg_Counting_Semaphore4waitEv
8002a55c g     F .text	000000f4 interrupt_end
8002247c g     F .text	00000108 __unpack_d
80028a4c g     F .text	000001c4 _ZN10Cyg_ThreadC1EjPFvjEjPcjj
8002800c g     F .text	00000008 cyg_mutex_set_ceiling
8003604c g     F .text	00000094 fflush
8003d34c g     O .bss	00000014 _ZN20Cyg_libc_stdio_files10files_lockE
80029d18 g     F .text	00000008 _Z26cyg_null_exception_handlerjij
8002a728 g     F .text	0000009c _ZN28Cyg_Scheduler_Implementation10rem_threadEP10Cyg_Thread
80027f00 g     F .text	00000018 cyg_spinlock_init
8002cdb8 g     F .text	00000050 _ZN9Cyg_Mutex11set_ceilingEi
8002bb94 g     F .text	000001f8 _ZN8Cyg_Flag4waitEjhy
80023814 g     F .text	00000008 hal_idle_thread_action
8002808c g     F .text	00000024 cyg_flag_wait
80026788 g     F .text	0000009c hal_default_isr
8002170c g     F .text	00000074 __adddf3
80035454 g     F .text	000000dc _ZN9Cyg_Alarm10initializeEyy
8002a898 g     F .text	00000024 _ZN28Cyg_Scheduler_Implementation9timesliceEv
8002ef14 g     F .text	000000cc _ZN15Cyg_StdioStreamC1EPvNS_8OpenModeEiiijPh
8003ac94 g     O .bss	00000004 _ZN28Cyg_Scheduler_Implementation15timeslice_countE
8002c724 g     F .text	000001a8 _ZN8Cyg_Mbox3getEv
800375b8 g     F .text	0000006c __memmove
80020da4 g     F .text	00000480 __umoddi3
800290d4 g     F .text	00000090 _ZN10Cyg_Thread12force_resumeEv
800342b4 g     F .text	00000008 _ZdlPv
80028044 g     F .text	00000024 cyg_flag_poll
80020718 g     F .text	00000078 hal_zero_bss
80027fdc g     F .text	00000008 cyg_cond_broadcast
80028480 g     F .text	0000004c cyg_thread_resume
8003d3fd g       *ABS*	00000000 __bss_end
800392f8 g       *ABS*	00000000 __ram_data_end
80020918 g     F .text	0000048c __udivdi3
8002d4e4 g     F .text	00000010 dbg_thread_capabilities
80023a68 g     F .text	00000074 cyg_hal_plf_pci_cfg_read_word
8003ce10 g     O .bss	00000044 cyg_libc_stdio_stdout
80027ea4 g     F .text	0000000c cyg_real_time_clock
800255d0 g     F .text	00000120 cyg_pci_configure_device
8002a810 g     F .text	00000008 _ZN28Cyg_Scheduler_Implementation17deregister_threadEP10Cyg_Thread
800282c4 g     F .text	00000008 cyg_interrupt_acknowledge
8003a310 g     O .bss	00000000 cyg_interrupt_stack
80036854 g     F .text	00000590 _ZN35Cyg_Mempool_dlmalloc_Implementation9try_allocEi
80033060 g     F .text	00000238 strtol
8002aadc g     F .text	000000b8 _ZN30Cyg_SchedThread_Implementation13to_queue_headEv
80028470 g     F .text	00000008 cyg_thread_release
800282d4 g     F .text	00000008 cyg_interrupt_unmask
8002de64  w    F .text	000000c8 _ZN15Cyg_StdioStreamD1Ev
8002b764 g     F .text	00000058 _ZN8Cyg_Flag8maskbitsEj
80038fc0 g       *ABS*	00000000 __rom_data_start
80024108 g     F .text	0000000c cyg_pci_set_io_base
800200bc g     F .rom_vectors	00000010 reset_vector
800383a8 g     O .rodata	00000008 Cyg_libc_str_null_mask_2
80027ffc g     F .text	00000008 cyg_cond_init
800285a8 g     F .text	00000010 cyg_scheduler_start
8002ebb0 g     F .text	00000194 _ZN15Cyg_StdioStream10initializeEPvNS_8OpenModeEiiijPh
800285b8 g     F .text	000000e4 cyg_thread_get_next
80027f18 g     F .text	00000008 cyg_spinlock_destroy
8002803c g     F .text	00000008 cyg_mutex_init
80035acc g     F .text	0000004c calloc
80021fb4 g     F .text	000000e0 __fixdfsi
800283e0 g     F .text	00000008 cyg_thread_free_data_index
80032c18 g     F .text	00000448 strtod
80034190 g     F .text	00000124 _memcpy
8002877c g     F .text	000000b8 cyg_thread_find
80033e64 g     F .text	00000318 __strerror
80020220 g     F .text	00000108 __default_exception_vsr
80020080 g     F .rom_vectors	00000024 other_vector
80025344 g     F .text	00000054 cyg_pci_init
80027e74 g     F .text	00000008 cyg_clock_to_counter
80039108 g     O .data	0000000c cyg_io_serial_callbacks
8002a8d8 g     F .text	00000010 _ZN30Cyg_SchedThread_ImplementationC1Ej
8003d32c g     O .bss	00000020 _ZN20Cyg_libc_stdio_files5filesE
80034f2c g     F .text	00000034 _ZN9Cyg_AlarmC2EP11Cyg_CounterPFvPS_jEj
800297bc g     F .text	000001c4 _ZN10Cyg_ThreadC2EjPFvjEjPcjj
80027e90 g     F .text	00000014 cyg_clock_get_resolution
80036640 g     F .text	00000104 _memset
80030968 g     F .text	0000004c fprintf
80024468 g     F .text	0000001c cyg_pci_read_config_uint16
8002371c g     F .text	0000008c hal_msbit_index
80028944 g     F .text	0000003c _ZN18Cyg_HardwareThread12thread_entryEP10Cyg_Thread
80028270 g     F .text	00000008 cyg_counter_tick
80035530 g     F .text	000001bc _ZN11Cyg_Counter4tickEj
80028268 g     F .text	00000008 cyg_counter_multi_tick
800282cc g     F .text	00000008 cyg_interrupt_unmask_intunsafe
80029508 g     F .text	000000d0 _ZN10Cyg_ThreadD1Ev
80029c38 g     F .text	000000e0 _ZN15Cyg_ThreadTimer5alarmEP9Cyg_Alarmj
80027b38 g     F .text	00000008 diag_dump_buf_16bit
8002dce0 g     F .text	0000001c vprintf
80027f30 g     F .text	0000000c cyg_spinlock_clear
80026ef8 g     F .text	00000020 diag_dump_buf_with_offset
8003ac80 g     O .bss	00000004 _ZN13Cyg_Interrupt15disable_counterE
80028158 g     F .text	00000008 cyg_mbox_get
8002ce08 g     F .text	000000b4 _ZN22Cyg_Condition_Variable9broadcastEv
80028120 g     F .text	00000008 cyg_semaphore_init
80034f60 g     F .text	00000034 _ZN9Cyg_AlarmC1EP11Cyg_CounterPFvPS_jEj
8002ada8 g     F .text	00000008 _ZN15Cyg_SchedThread19disinherit_priorityEv
800226bc g     F .text	00000188 __pack_f
80027fec g     F .text	00000008 cyg_cond_wait
80026be4  w    F .text	00000008 cyg_prestart
80026bf4  w    F .text	00000008 cyg_user_start
80033d5c g     F .text	00000108 modf
80023828 g     F .text	00000028 cyg_hal_exception_handler
80029a60 g     F .text	00000084 _ZN14Cyg_IdleThreadC2Ev
80028834 g     F .text	00000058 cyg_scheduler_safe_lock
8002b51c g     F .text	0000007c _ZN22Cyg_Counting_Semaphore7trywaitEv
80039258 g       .ctors	00000000 __CTOR_LIST__
8002d8f4 g     F .text	000000dc dbg_getthreadreg
8002ae58 g     F .text	00000008 _ZN15Cyg_SchedThread14relay_priorityEP10Cyg_ThreadP15Cyg_ThreadQueue
80027de0 g     F .text	00000008 cyg_thread_get_stack_base
8002444c g     F .text	0000001c cyg_pci_read_config_uint32
80033b80  w    F .text	00000130 memchr
800392fc g     O .sbss	00000004 hal_saved_interrupt_state
8002e758 g     F .text	000002a0 _ZN15Cyg_StdioStream4readEPhjPj
80034448 g     F .text	00000034 _ZN9Cyg_ClockC1ENS_14cyg_resolutionE
8003ce90 g     O .bss	00000414 cygmem_pool_heap1
80026a38 g     F .text	0000003c cyg_io_read
800281b0 g     F .text	00000008 cyg_alarm_get_times
80038fbc g     O .rodata	00000004 stdin
8002853c g     F .text	00000008 cyg_thread_exit
8002e0ac  w    F .text	00000010 _ZN16Cyg_OutputStreamD0Ev
80026c04 g     F .text	0000000c diag_init_putc
8002c9cc g     F .text	0000000c _ZN22Cyg_Condition_VariableC2ER9Cyg_Mutex
8002a3c8 g     F .text	00000098 _ZN13Cyg_Interrupt16unmask_interruptEj
8002bf8c g     F .text	000001f4 _ZN8Cyg_Mbox3getEy
80028304 g     F .text	00000008 cyg_interrupt_get_vsr
8002a808 g     F .text	00000008 _ZN28Cyg_Scheduler_Implementation15register_threadEP10Cyg_Thread
800200cc g       .text	00000000 _ftext
80028380 g     F .text	00000008 cyg_exception_call_handler
800281c0 g     F .text	00000008 cyg_alarm_delete
800200cc g     F .text	000000f8 _start
80027df0 g     F .text	0000001c cyg_thread_get_data
800220f4 g     F .text	00000048 __ucmpdi2
8003417c g     F .text	00000014 cyg_error_get_errno_p
80029e6c g     F .text	00000054 _ZN13Cyg_InterruptD1Ev
80039300 g     O .sbss	00000004 _cyg_hal_compiler_dummy
8002ae28 g     F .text	00000008 _ZN15Cyg_SchedThread20set_priority_ceilingEi
80026aec g     F .text	00000020 cyg_io_select
8002a53c g     F .text	00000008 _ZN13Cyg_Interrupt19configure_interruptEjii
80027c70 g     F .text	00000040 diag_vsprintf
8002a164 g     F .text	000000ac _ZN13Cyg_Interrupt7set_vsrEjPFvvEPS1_
80028440 g     F .text	00000018 cyg_thread_delay
800357fc g     F .text	00000048 _ZN9Cyg_AlarmD1Ev
8002423c g     F .text	0000006c cyg_pci_allocate_io_priv
800248d0 g     F .text	0000001c cyg_pci_read_config_uint8
80037cc0  w    O .rodata	00000018 _ZTV16Cyg_OutputStream
8003ac98 g     O .bss	00000004 _ZN18Cyg_Scheduler_Base14current_threadE
8002b0c0 g     F .text	00000050 _ZN22Cyg_Counting_SemaphoreD2Ev
800280f8 g     F .text	00000008 cyg_semaphore_post
80026ab0 g     F .text	0000003c cyg_io_bread
80027f6c g     F .text	0000003c cyg_spinlock_spin_intsave
8002a820 g     F .text	00000078 _ZN28Cyg_Scheduler_Implementation13timeslice_cpuEv
80027fa8 g     F .text	0000002c cyg_spinlock_clear_intsave
8002c274 g     F .text	000001b4 _ZN8Cyg_Mbox3putEPv
8002d278 g     F .text	00000104 _ZN22Cyg_Condition_Variable10wait_innerEP9Cyg_Mutex
80027ed4 g     F .text	0000000c cyg_mbox_waiting_to_get
800351a4 g     F .text	00000048 _ZN17Cyg_RealTimeClock3isrEjj
8002cebc g     F .text	00000080 _ZN22Cyg_Condition_Variable6signalEv
80026bec  w    F .text	00000008 cyg_package_start
800260a8 g     F .text	0000001c hal_if_diag_init
8002381c g     F .text	0000000c hal_arch_program_new_stack
80025dec g     F .text	00000090 cyg_hal_diag_mangler_gdb_init
8002c9e4 g     F .text	0000000c _ZN22Cyg_Condition_VariableC2Ev
800342e4 g     F .text	00000020 _ZN11Cyg_CounterC1Ej
80035c38 g     F .text	00000100 realloc
800292bc g     F .text	00000090 _ZN10Cyg_Thread12counted_wakeEv
80027e7c g     F .text	00000014 cyg_clock_set_resolution
8002c9fc g     F .text	00000050 _ZN22Cyg_Condition_VariableD2Ev
80022584 g     F .text	00000138 __fpcmp_parts_d
800282bc g     F .text	00000008 cyg_interrupt_configure
80025398 g     F .text	00000238 cyg_pci_allocate_memory
80027da0 g     F .text	00000008 cyg_thread_get_id
80034f94 g     F .text	0000000c _ZN9Cyg_AlarmC2Ev
80020790 g     F .text	0000004c __break_vsr_springboard
8002aac4 g     F .text	00000018 _ZN30Cyg_ThreadQueue_Implementation7highpriEv
80034fac g     F .text	000000f8 _ZN9Cyg_Alarm11synchronizeEv
800343a4 g     F .text	00000070 _ZN11Cyg_Counter9rem_alarmEP9Cyg_Alarm
80023898 g     F .text	00000040 hal_init_dcache
8002a658 g     F .text	0000004c _ZN28Cyg_Scheduler_ImplementationC2Ev
80037058 g     F .text	000000d8 _ZN35Cyg_Mempool_dlmalloc_Implementation10get_statusEtR18Cyg_Mempool_Status
800282fc g     F .text	00000008 cyg_interrupt_set_vsr
800295d8 g     F .text	000000d0 _ZN10Cyg_ThreadD2Ev
8002dd94  w    F .text	000000d0 _ZN15Cyg_StdioStreamD0Ev
8002b598 g     F .text	0000000c _ZN8Cyg_FlagC2Ej
80027e50 g     F .text	00000014 cyg_counter_current_value
80021a90 g     F .text	00000274 __divdf3
80027d68 g     F .text	00000018 cyg_scheduler_lock
8002dd30  w    F .text	00000064 _ZN15Cyg_StdioStream9get_errorEv
80039024 g     O .data	00000000 hal_interrupt_data
8002d9d0 g     F .text	000000dc dbg_setthreadreg
80027c68 g     F .text	00000008 diag_dump_buf_32bit
80020800 g     O .text	00000000 hal_thread_switch_context
80037ca8  w    O .rodata	00000018 _ZTV15Cyg_StdioStream
80021780 g     F .text	00000310 __muldf3
8002b494 g     F .text	00000088 _ZN22Cyg_Counting_Semaphore4postEv
80024ff0 g     F .text	00000354 cyg_pci_set_device_info
8002cd68 g     F .text	00000050 _ZN9Cyg_Mutex12set_protocolENS_11cyg_protcolE
80027f20 g     F .text	00000010 cyg_spinlock_spin
80027ee0 g     F .text	0000000c cyg_mbox_waiting_to_put
80023684 g     F .text	00000008 hal_arch_default_isr
80029164 g     F .text	000000a4 _ZN10Cyg_Thread6resumeEv
80024314 g     F .text	0000001c cyg_pci_write_config_uint32
80023cec g     F .text	00000320 cyg_hal_plf_pci_init
8002b2c0 g     F .text	000001d4 _ZN22Cyg_Counting_Semaphore4waitEy
800283e8 g     F .text	00000008 cyg_thread_new_data_index
80033824 g     F .text	0000035c strtoull
80026708 g     F .text	00000044 cyg_hal_is_break
800242c8 g     F .text	00000020 cyg_pci_write_config_uint16
8002c914 g     F .text	00000018 _ZN9Cyg_MutexC1ENS_11cyg_protcolE
80028150 g     F .text	00000008 cyg_mbox_timed_get
800392f8 g       *ABS*	00000000 __bss_start
80028980 g     F .text	00000064 _ZN10Cyg_Thread15free_data_indexEi
80027eb0 g     F .text	0000001c cyg_current_time
800288d8 g     F .text	0000006c _ZN10Cyg_Thread4exitEv
800344cc g     F .text	00000050 _ZN9Cyg_ClockD1Ev
800289e4 g     F .text	00000068 _ZN10Cyg_Thread19cancel_counted_wakeEv
80036640  w    F .text	00000104 memset
800207dc g     F .text	00000024 main
800392d8 g     O .devtab	00000020 haldiag_io0
8002f184  w    F .text	00000008 _ZN19Cyg_VsnprintfStream9get_errorEv
8002c628 g     F .text	000000fc _ZN8Cyg_Mbox6trygetEv
8002b5a4 g     F .text	0000000c _ZN8Cyg_FlagC1Ej
80024634 g     F .text	00000134 cyg_pci_find_matching
8002b160 g     F .text	00000008 _ZNK22Cyg_Counting_Semaphore4peekEv
80028014 g     F .text	00000008 cyg_mutex_release
8003763c g     F .text	00000060 cyg_libc_invoke_atexit_handlers
800342c4 g     F .text	00000020 _ZN11Cyg_CounterC2Ej
800342bc g     F .text	00000008 _ZdaPv
80029208 g     F .text	000000b4 _ZN10Cyg_Thread4wakeEv
80022094 g     F .text	00000060 __truncdfsf2
80035e9c g     F .text	0000002c cyg_libc_invoke_main
80023974 g     F .text	00000040 hal_icache_sync
80023adc g     F .text	00000074 cyg_hal_plf_pci_cfg_read_byte
80026290 g     F .text	0000006c hal_ctrlc_isr
80029d48 g     F .text	0000002c _ZN21Cyg_Exception_Control18register_exceptionEiPFvjijEjPS1_Pj
8002a460 g     F .text	00000074 _ZN13Cyg_Interrupt26unmask_interrupt_intunsafeEj
800282e4 g     F .text	00000008 cyg_interrupt_mask
8002d114 g     F .text	00000164 _ZN22Cyg_Condition_Variable10wait_innerEP9Cyg_Mutexy
800208dc g     F .text	0000003c hal_longjmp
80026b84 g     F .text	00000008 cyg_devio_cwrite
800281c8 g     F .text	0000004c cyg_alarm_create
8002ae94 g     F .text	00000034 _ZN15Cyg_SchedThreadC2EP10Cyg_Threadj
800239b4 g     F .text	00000040 hal_dcache_sync
800309b4  w    F .text	000000e4 putc
800383b0 g     O .rodata	00000008 cyg_libm_infinity
800376e0 g     O .rodata	00000018 __thenan_df
800356ec g     F .text	00000024 _ZN17Cyg_RealTimeClock3dsrEjjj
8003a3d0 g     O .bss	000000a8 idle_thread
80039290 g       .ctors	00000000 __CTOR_END__
8003d400 g       *ABS*	00000000 __heap1
80033cb0 g     F .text	000000ac __strlen
80027ef4 g     F .text	0000000c cyg_flag_waiting
80039220 g     O .data	00000008 cygmem_memalloc_heaps
80039290 g       .dtors	00000000 __DTOR_LIST__
80033b80 g     F .text	00000130 __memchr
80035ec8 g     F .text	00000184 cyg_libc_stdio_flush_all_but
80029d74 g     F .text	00000014 _ZN21Cyg_Exception_Control20deregister_exceptionEi
80028460 g     F .text	00000010 cyg_thread_yield
80026bac g     F .text	00000008 cyg_devio_get_config
8002ca9c g     F .text	000001fc _ZN9Cyg_Mutex4lockEv
80021d04 g     F .text	00000090 __nedf2
8002400c g     F .text	000000ec hal_platform_init
80028160 g     F .text	00000008 cyg_mbox_delete
80025bac g     F .text	00000034 cyg_pcihw_read_config_uint8
80028068 g     F .text	00000024 cyg_flag_timed_wait
8002ed44 g     F .text	000000e8 _ZN15Cyg_StdioStreamC1ENS_8OpenModeEjPh
8003ac88 g     O .bss	00000004 _ZN13Cyg_Interrupt23interrupt_disable_stateE
8003ad24 g     O .bss	00000004 _ZN18Cyg_Scheduler_Base15thread_switchesE
8003ce58 g     O .bss	00000038 _ZN17Cyg_RealTimeClock3rtcE
8002b914 g     F .text	000000ec _ZN8Cyg_FlagD1Ev
8003769c g     F .text	00000040 atexit
80026178 g     F .text	00000030 hal_if_init
80023858 g     F .text	00000040 hal_init_icache
80028c9c g     F .text	00000098 _ZN10Cyg_Thread7suspendEv
800282dc g     F .text	00000008 cyg_interrupt_mask_intunsafe
800391f4 g     O .data	00000004 cyg_scheduler_sched_lock
800392f8 g     O .devtab	00000000 __DEVTAB_END__
8002d4f4 g     F .text	0000003c dbg_currthread
80038fb8 g     O .rodata	00000004 stderr
80028110 g     F .text	00000008 cyg_semaphore_wait
8002b0b4 g     F .text	0000000c _ZN22Cyg_Counting_SemaphoreC1Ei
800201cc g     F .text	00000054 __nmi_entry
80028388 g     F .text	0000001c cyg_exception_clear_handler
80035844 g     F .text	00000048 _ZN9Cyg_AlarmD2Ev
8002831c g     F .text	00000008 cyg_interrupt_delete
80028130 g     F .text	00000008 cyg_mbox_timed_put
8003d2a4 g     O .bss	00000044 cyg_libc_stdio_stderr
80028544 g     F .text	00000064 cyg_thread_create
80027e64 g     F .text	00000010 cyg_counter_set_value
80024484 g     F .text	000001b0 cyg_pci_find_next
800383a0 g     O .rodata	00000008 Cyg_libc_str_null_mask_1
80026ba4 g     F .text	00000008 cyg_devio_select
80000200 g       *ABS*	00000000 hal_vsr_table
8002c8cc g     F .text	00000018 _ZN9Cyg_MutexC2Ev
8002a8e8 g     F .text	0000004c _ZN30Cyg_ThreadQueue_Implementation7enqueueEP10Cyg_Thread
8002d530 g     F .text	00000058 dbg_thread_id
80025c4c g     F .text	00000034 cyg_pcihw_read_config_uint16
800351ec g     F .text	000000d4 _ZN17Cyg_RealTimeClockC1Ev
80028c10 g     F .text	0000008c _ZN10Cyg_Thread12reinitializeEv
8003588c g     F .text	00000090 _ZN9Cyg_Alarm6enableEv
800309b4 g     F .text	000000e4 fputc
80028118 g     F .text	00000008 cyg_semaphore_destroy
8002a0f4 g     F .text	00000054 _ZN13Cyg_Interrupt6detachEv
80035710 g     F .text	0000007c _ZN9Cyg_Alarm9get_timesEPyS0_
800280b8 g     F .text	00000008 cyg_flag_setbits
80035b18 g     F .text	00000120 mallinfo
800269fc g     F .text	0000003c cyg_io_write
8002a270 g     F .text	00000050 _ZN13Cyg_Interrupt17enable_interruptsEv
8002bd8c g     F .text	00000014 _ZN8Cyg_MboxC2Ev
80027db4 g     F .text	0000001c cyg_thread_get_priority
800281a8 g     F .text	00000008 cyg_alarm_enable
8002674c g     F .text	0000003c cyg_hal_user_break
800260c4 g     F .text	0000006c hal_if_diag_read_char
8003aca0 g     O .bss	00000084 _ZN13Cyg_Scheduler9schedulerE
80039088 g     O .data	00000000 hal_interrupt_objects
800268d0 g     F .text	0000012c cyg_io_lookup
80038fc0 g       *ABS*	00000000 __ram_data_start
80028108 g     F .text	00000008 cyg_semaphore_timed_wait
800282ec g     F .text	00000008 cyg_interrupt_enable
80027da8 g     F .text	0000000c cyg_thread_idle_thread
80028034 g     F .text	00000008 cyg_mutex_destroy
8002802c g     F .text	00000008 cyg_mutex_lock
800392f8 g       *ABS*	00000000 _edata
800284cc g     F .text	00000008 cyg_thread_suspend
8002888c g     F .text	0000002c _Z16idle_thread_mainj
8003d400 g       *ABS*	00000000 _end
8002a818 g     F .text	00000008 _ZN28Cyg_Scheduler_Implementation6uniqueEi
8002a210 g     F .text	00000060 _ZN13Cyg_Interrupt18disable_interruptsEv
8002a148 g     F .text	0000001c _ZN13Cyg_Interrupt7get_vsrEjPPFvvE
80026bfc g     F .text	00000008 diag_init
800283a4 g     F .text	0000003c cyg_exception_set_handler
8002f314 g     F .text	00001654 vfscanf
800240f8 g     F .text	00000010 cyg_pci_set_memory_base
80027d08 g     F .text	00000060 diag_sprintf
80027fe4 g     F .text	00000008 cyg_cond_signal
80026f18 g     F .text	00000008 diag_dump_buf
800281a0 g     F .text	00000008 cyg_alarm_disable
800280d0 g     F .text	00000028 cyg_semaphore_peek
800392b8 g     O .devtab	00000020 tty_io_diag
8002a014 g     F .text	00000080 cyg_interrupt_post_dsr
80000300 g       *ABS*	00000000 hal_virtual_vector_table
80026f28 g     F .text	0000004c diag_write_char
80029980 g     F .text	00000084 _ZN14Cyg_IdleThreadC1Ev
80029ec0 g     F .text	000000cc _ZN13Cyg_Interrupt23call_pending_DSRs_innerEv
800390ec g     O .data	0000001c cyg_io_serial_devio
8002821c g     F .text	0000004c cyg_clock_create
800262fc g     F .text	00000084 hal_if_diag_write_char
80023a0c g     F .text	0000005c cyg_hal_plf_pci_cfg_read_dword
80037594 g     F .text	00000024 exit
8002a650 g     F .text	00000008 _ZN13Cyg_Interrupt17call_pending_DSRsEv
8002b5b0 g     F .text	000000ec _ZN8Cyg_FlagD2Ev
80036de4 g     F .text	00000274 _ZN35Cyg_Mempool_dlmalloc_Implementation4freeEPhi
80034fa0 g     F .text	0000000c _ZN9Cyg_AlarmC1Ev
8002dd14 g     F .text	0000001c setbuf
80025bf0 g     F .text	00000014 cyg_pcihw_write_config_uint16
80023850 g     F .text	00000008 hal_variant_init
80027e24 g     F .text	0000001c cyg_thread_set_data
80021ea8 g     F .text	00000060 __unorddf2
80027988 g     F .text	00000018 diag_vprintf
8002ac10 g     F .text	00000080 _ZN30Cyg_SchedThread_Implementation5yieldEv
80037624 g     F .text	00000018 _exit
8002b0a8 g     F .text	0000000c _ZN22Cyg_Counting_SemaphoreC2Ei
80027f3c g     F .text	00000024 cyg_spinlock_try
80037130 g     F .text	00000464 _ZN35Cyg_Mempool_dlmalloc_Implementation12resize_allocEPhiPi
8002e0bc g     F .text	000000d0 _ZN15Cyg_StdioStream21flush_output_unlockedEv
800281b8 g     F .text	00000008 cyg_alarm_initialize
800206ec g     F .text	0000002c hal_program_new_stack
8002e9f8 g     F .text	000001b8 _ZN15Cyg_StdioStream18refill_read_bufferEv
8002a094 g     F .text	00000060 _ZN13Cyg_Interrupt6attachEv
800200cc g       .text	00000000 _stext
8002c8fc g     F .text	00000018 _ZN9Cyg_MutexC2ENS_11cyg_protcolE
80033cb0  w    F .text	000000ac strlen
8002adb0 g     F .text	00000078 _ZN15Cyg_SchedThread22set_inherited_priorityEiP10Cyg_Thread
8002a8c8 g     F .text	00000010 _ZN30Cyg_SchedThread_ImplementationC2Ej
80028478 g     F .text	00000008 cyg_thread_kill
8002f18c g     F .text	0000004c _ZN19Cyg_VsnprintfStream5writeEPKhjPj
80020000 g     F .rom_vectors	00000024 utlb_vector
8002b01c g     F .text	0000008c _ZN13Cyg_Scheduler12thread_entryEP10Cyg_Thread
80027e48 g     F .text	00000008 cyg_interrupt_get_cpu
80028278 g     F .text	00000008 cyg_counter_delete
80024330 g     F .text	0000011c cyg_pci_allocate_io
80026130 g     F .text	00000048 hal_ctrlc_isr_init
8002d588 g     F .text	00000010 dbg_currthread_id
8002bee4 g     F .text	000000a8 _ZN8Cyg_Mbox9peek_itemEv
80030aa4 g     F .text	000000e4 fputs
8002a8bc g     F .text	0000000c cyg_scheduler_timeslice_cpu
8003ac9c g     O .bss	00000004 _ZN18Cyg_Scheduler_Base15need_rescheduleE
8002e42c g     F .text	00000160 _ZN15Cyg_StdioStream9peek_byteEPh
8002f1d8  w    F .text	00000018 _ZN19Cyg_VsnprintfStreamD0Ev
8002a7c4 g     F .text	00000044 _ZN28Cyg_Scheduler_Implementation19set_need_rescheduleEP10Cyg_Thread
80026b48 g     F .text	0000003c cyg_io_set_config
8003ac78 g     O .bss	00000008 _ZN10Cyg_Thread17exception_controlE
8002168c g     F .text	00000080 __subdf3
80026f80 g     F .text	00000174 diag_write_long_num
80028140 g     F .text	00000008 cyg_mbox_peek_item
8002801c g     F .text	00000008 cyg_mutex_unlock
80034304 g     F .text	00000050 _ZN11Cyg_CounterD2Ev
8002c428 g     F .text	00000200 _ZN8Cyg_Mbox3putEPvy
800392f8 g       *ABS*	00000000 _fbss
80026b9c g     F .text	00000008 cyg_devio_bread
8002a6f0 g     F .text	00000038 _ZN28Cyg_Scheduler_Implementation8scheduleEv
8002a6a4 g     F .text	0000004c _ZN28Cyg_Scheduler_ImplementationC1Ev
8002a2c0 g     F .text	000000bc _ZN13Cyg_Interrupt14mask_interruptEj
8002ca4c g     F .text	00000050 _ZN22Cyg_Condition_VariableD1Ev
8002f16c  w    F .text	00000018 _ZN19Cyg_VsnprintfStreamD1Ev
8002b7bc g     F .text	00000158 _ZN8Cyg_Flag7setbitsEj
80022168 g     F .text	00000314 __pack_d
8003a3c8 g     O .bss	00000004 idle_thread_loops
8002c180 g     F .text	000000f4 _ZN8Cyg_Mbox6tryputEPv
8002dcfc g     F .text	00000018 vfprintf
8002e0a4 g     F .text	00000008 _ZN16Cyg_OutputStream9get_errorEv
80027ff4 g     F .text	00000008 cyg_cond_destroy
8003591c g     F .text	0000012c free
80027ecc g     F .text	00000008 cyg_mbox_peek
800256f0 g     F .text	0000041c cyg_pci_configure_bus
80029f94 g     F .text	00000080 _ZN13Cyg_Interrupt8post_dsrEv
80034354 g     F .text	00000050 _ZN11Cyg_CounterD1Ev


