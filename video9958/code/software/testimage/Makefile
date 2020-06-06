# Make rosco_m68k programs
# 
# Copyright (c)2020 Ross Bamford
# See LICENSE

EXTRA_CFLAGS?=
SYSINCDIR?=../../../../../rosco_m68k/code/software/libs/build/include
SYSLIBDIR?=../../../../../rosco_m68k/code/software/libs/build/lib
LIBS=-lstart_serial
DEFINES=-DROSCO_M68K
CFLAGS=-std=c11 -ffreestanding -Wall -pedantic -Werror -I$(SYSINCDIR) 	\
			 -mcpu=68010 -march=68010 -mtune=68010														\
			 -mno-align-int -mno-strict-align $(DEFINES)
LDFLAGS=-T $(SYSLIBDIR)/ld/serial/rosco_m68k_program.ld -L $(SYSLIBDIR) \
				-Map=$(MAP)
ASFLAGS=-Felf -m68010 -quiet $(DEFINES)
CC=m68k-elf-gcc
LD=m68k-elf-ld
AS=vasmm68k_mot
RM=rm -f

IMAGE?=splash
IMAGEBIN=$(IMAGE).img
IMAGEFIX=$(IMAGE)fix
IMAGEFIXBIN=$(IMAGEFIX).bin
IMAGEFIXOBJ=$(IMAGEFIX).o

KERMIT=kermit
SERIAL?=/dev/modem
BAUD?=9600

# Output config
BINARY_BASENAME=testimage
BINARY_EXT=bin
MAP=$(BINARY_BASENAME).map
BINARY=$(BINARY_BASENAME).$(BINARY_EXT)

OBJECTS=kmain.o $(IMAGEFIXOBJ)

# Remove 5 byte header, and convert to GGGRRRBB format.
$(IMAGEFIXBIN): $(IMAGEBIN)
	ruby -e "IO.binwrite('$@',                                    \
		IO.binread('$<')[5..-1].split('')                           \
			.map { |c| c.bytes[0] }                                   \
			.map { |p| ((p & 224) >> 3) | ((p & 28) << 3) | (p & 3) } \
			.map(&:chr)                                               \
			.join                                                     \
		)"

$(IMAGEFIXOBJ): $(IMAGEFIXBIN)
	m68k-elf-objcopy -I binary -B m68k -O elf32-m68k              \
		--redefine-sym _binary_$(IMAGEFIX)_bin_start=_image_start   \
		--redefine-sym _binary_$(IMAGEFIX)_bin_end=_image_end       \
		--redefine-sym _binary_$(IMAGEFIX)_bin_size=_image_size     \
		$< $@

%.o : %.c
	$(CC) -c $(CFLAGS) $(EXTRA_CFLAGS) -o $@ $<

%.o : %.S
	$(AS) $(ASFLAGS) -o $@ $<

$(BINARY) : $(OBJECTS)
	$(LD) $(LDFLAGS) $^ -o $@ $(LIBS)
	chmod a-x $@

.PHONY: all clean load

all: $(BINARY)

clean: 
	$(RM) $(OBJECTS) $(BINARY) $(BINARY_ODD) $(BINARY_EVEN) $(MAP) $(IMAGEFIXBIN)

load: $(BINARY)
	kermit -i -l $(SERIAL) -b $(BAUD) -s $(BINARY)
