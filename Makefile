CC = g++
SYSTEMC = /usr/local/systemc-2.1
INCDIR = -I. -I$(SYSTEMC)/include
LIBDIR = -L. -L$(SYSTEMC)/lib-linux
LIBS   = -lsystemc -lm 
CFLAGS = -O2 -Wall

TARGET = run.x
SRCS   = adder.cpp tb.cpp main.cpp
OBJS   = $(SRCS:.cpp=.o)

all: $(TARGET)

$(TARGET): $(OBJS) 
    $(CC) -o $@ $(LIBDIR) $(LIBS) $(OBJS) 

.cpp.o:
    $(CC) $(CFLAGS) $(INCDIR) -c $<

clean:
    @rm -f *.o $(TARGET)
