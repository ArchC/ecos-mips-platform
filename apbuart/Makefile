# ####################################################
# TLM memory with TLM interface (ArchC 2x compliant)
# ####################################################

TARGET=apbuart

SRCS := apbuart.cpp socket.cpp serversocket.cpp
OBJS := $(SRCS:.cpp=.o)

#------------------------------------------------------
.SILENT:
#------------------------------------------------------
.SUFFIXES: .cc .cpp .o
#------------------------------------------------------
lib: all
	ar r lib$(TARGET).a $(OBJS)
#------------------------------------------------------
all: $(OBJS) apbuart.h
#------------------------------------------------------
clean:
	rm -f $(OBJS) *~ *.o *.a
#------------------------------------------------------
distclean: clean
#------------------------------------------------------
.cpp.o:
	$(CC) $(CFLAGS) $(INC_DIR) -c $<
#------------------------------------------------------
.cc.o:
	$(CC) $(CFLAGS) $(INC_DIR) -c $<
