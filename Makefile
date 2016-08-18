TARGET=platform
EXE = $(TARGET).x

SRCS := main.cpp
OBJS := $(SRCS:.cpp=.o)
COMPONENTS := mips memory bus mmu gptimer irqmp



export INC_DIR := -I. `pkg-config --cflags systemc` `pkg-config --cflags archc` `pkg-config --cflags tlm` \
						$(foreach c, $(COMPONENTS), -I $(c)) 

export LIB_DIR := -L. `pkg-config --libs systemc`  \
						$(foreach c, $(COMPONENTS), -L $(c) -l$(c)) 
						

export LIB_SYSTEMC := `pkg-config --libs systemc`
export LIB_ARCHC := `pkg-config --libs archc`
export LIBS := $(LIB_SYSTEMC) $(LIB_DIR) $(LIB_ARCHC)
export OTHER := -std=c++11  -DAC_GUEST_BIG_ENDIAN  -Wno-deprecated

export CFLAGS:=-g -O2 $(OTHER)

export CC:=g++ 

all: 
	for c in $(COMPONENTS); do echo " => Making" $$c ...; \
	    cd $$c; $(MAKE); cd ..; done
	echo " => Making sw ..."
	cd sw; $(MAKE)
	echo " => Making platform ..."
	$(MAKE) $(EXE) 

clean:
	for c in $(COMPONENTS); do echo " => Cleaning" $$c ...; \
	    cd $$c; $(MAKE) clean; cd ..; done	
	echo " => Cleaning sw ..."
	cd sw ; $(MAKE) clean
	echo " => Cleaning platform ..."
	rm -f $(OBJS) $(EXE) *~ *.o

#------------------------------------------------------
.SILENT:
#------------------------------------------------------
.SUFFIXES: .cc .cpp .o .x
#------------------------------------------------------
$(EXE): $(OBJS) $(LIBFILES)
	$(CC) $(CFLAGS) $(INC_DIR) -o $(EXE) $(OBJS) $(LIBS)
#------------------------------------------------------
main.o:
	$(CC) $(CFLAGS) $(INC_DIR) -c main.cpp 
#------------------------------------------------------
#all: $(EXE)
#------------------------------------------------------
run: $(EXE)
	./$(EXE) -- sw/hello.elf
#------------------------------------------------------
#------------------------------------------------------
distclean: clean
#------------------------------------------------------
.cpp.o:
	$(CC) $(CFLAGS) $(INC_DIR) -c $<
#------------------------------------------------------
.cc.o:
	$(CC) $(CFLAGS) $(INC_DIR) -c $<





