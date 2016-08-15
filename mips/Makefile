# ####################################################
# MIPS1 Simulator
# ####################################################

TARGET=mips
INC_DIR := -I. -I$(ARCHC_PATH)/include/archc -I$(SYSTEMC)/include -I$(TLM_PATH)

SRCS := mips.cpp  mips_arch.cpp  mips_arch_ref.cpp  mips_isa.cpp mips_syscall.cpp
OBJS := $(SRCS:.cpp=.o)

#------------------------------------------------------
.SILENT:
#------------------------------------------------------
.SUFFIXES: .cc .cpp .o
#-----------------------------------------------------
lib: all
	ar r lib$(TARGET).a $(OBJS)
#------------------------------------------------------
all: mips.cpp $(OBJS)
#------------------------------------------------------
clean:
	rm -f $(OBJS) *~ *.o *.a
	if test -f Makefile.archc; then $(MAKE) -f Makefile.archc distclean; fi
#------------------------------------------------------
.cpp.o:
	$(CC) $(CFLAGS) $(INC_DIR) -c $<
#------------------------------------------------------
.cc.o:
	$(CC) $(CFLAGS) $(INC_DIR) -c $<
#------------------------------------------------------
mips.cpp:
	echo --- No simulator found, using acsim to generate one.
	$(ARCHC_PATH)/bin/acsim mips.ac -abi -ndc
	$(MAKE) all
