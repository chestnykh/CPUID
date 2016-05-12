AS = nasm
ASFLAGS = -f elf
LD = ld
LDFLAGS = -m elf_i386
TARGET = cpuid


OBJS += cpuid.o \
		highest_eax_input.o


$(TARGET): $(OBJS)
	$(LD) $(LDFLAGS) $(OBJS) -o $@

cpuid.o: cpuid.asm ../include/hex_numbers.inc
	$(AS) $(ASFLAGS) $<


highest_eax_input.o: highest_eax_input.asm ../include/stringops.inc ../include/hex_numbers.inc
	$(AS) $(ASFLAGS) $<
