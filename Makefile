TARGET=platform
EXE = $(TARGET).x

SRCS := main.cpp
OBJS := $(SRCS:.cpp=.o)
COMPONENTS := mips memory bus

export LIB_DIR:= `pkg-config --libs systemc` `pkg-config --libs archc`\
				$(foreach c, $(COMPONENTS), -L $(c))


export INC_DIR := -I. `pkg-config --cflags systemc` `pkg-config --cflags archc` `pkg-config --cflags tlm` \
					$(foreach c, $(COMPONENTS), -I $(c)) 

export LIBS:= $(foreach c, $(COMPONENTS), -l$(c)) -lsystemc -larchc -lm

export LIBFILES:= $(foreach c, $(COMPONENTS), $(c)/lib$(c).a)

export CFLAGS:=-g

export CC:=g++


all: 
	for c in $(COMPONENTS); do echo " => Making" $$c ...; \
	    cd $$c; $(MAKE); cd ..; done
	echo " => Making platform ..."
	$(MAKE) $(EXE)

clean:
	for c in $(COMPONENTS); do echo " => Cleaning" $$c ...; \
	    cd $$c; $(MAKE) clean; cd ..; done	
	echo " => Cleaning platform ..."
	rm -f $(OBJS) $(EXE) *~ *.o

#------------------------------------------------------
.SILENT:
#------------------------------------------------------
.SUFFIXES: .cc .cpp .o .x
#------------------------------------------------------
$(EXE): $(OBJS) $(LIBFILES)
	$(CC) $(CFLAGS) $(INC_DIR) $(LIB_DIR) -o $(EXE) $(OBJS) $(LIBS)
#------------------------------------------------------
main.o:
	$(CC) $(CFLAGS) $(INC_DIR) -c main.cpp
#------------------------------------------------------
#all: $(EXE)
#------------------------------------------------------
run: $(EXE)
	./$(EXE) --load=sw/hello_world.mips
#------------------------------------------------------
#------------------------------------------------------
distclean: clean
#------------------------------------------------------
.cpp.o:
	$(CC) $(CFLAGS) $(INC_DIR) -c $<
#------------------------------------------------------
.cc.o:
	$(CC) $(CFLAGS) $(INC_DIR) -c $<





