CFLAGS=-I../include

$(LD)=$(CC)

all: pcx

%.o : %.c 
	$(CC) $(CFLAGS) -c -o $@ $<

pcx: pcx.o
	$(CC) $(LDFLAGS) -o $@ $^

clean: 
	rm -rf *.o pcx

.PHONY: clean all
