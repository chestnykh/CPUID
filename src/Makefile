AS = nasm
ASFLAGS = -f elf
LD = ld
LDFLAGS = -m elf_i386
TARGET = cpuid


OBJS += cpuid.o \
		max_eax_basic.o \
		max_eax_extended.o


$(TARGET): $(OBJS)
	$(LD) $(LDFLAGS) $(OBJS) -o $@

cpuid.o: cpuid.asm ../include/hex_numbers.inc
	$(AS) $(ASFLAGS) $<


max_eax_basic.o: max_eax_basic.asm
	$(AS) $(ASFLAGS) $<

max_eax_extended.o: max_eax_extended.asm
	$(AS) $(ASFLAGS) $<


.PHONY: clean

clean:
	rm *.o cpuid
