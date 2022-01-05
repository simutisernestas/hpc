TARGET	= libmatmult.so
LIBSRCS	= matmult.c
LIBOBJS	= matmult.o

OPT	= -g -ffast-math -funroll-loops -O3
PIC	= -fPIC

CC	= gcc
CFLAGS= $(OPT) $(PIC) $(XOPTS)

SOFLAGS = -shared 
XLIBS	= -L /usr/lib64/atlas -lsatlas

$(TARGET): $(LIBOBJS)
	$(CC) -o $@ $(SOFLAGS) $(LIBOBJS) $(XLIBS)

clean:
	@/bin/rm -f core core.* $(LIBOBJS) 
