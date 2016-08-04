AS = nasm
ASFLAGS = -f elf32
LD = ld
LDFLAGS = -m elf_i386
TARGET = cpuid


OBJS += cpuid.o \
		max_eax_basic.o \
		max_eax_extended.o \
		vendor_id.o \
		dump_register_bits.o \
		leaf_01.o




$(TARGET): $(OBJS)
	$(LD) $(LDFLAGS) $(OBJS) -o $@

cpuid.o: cpuid.asm ../include/hex_numbers.inc
	$(AS) $(ASFLAGS) $<


max_eax_basic.o: max_eax_basic.asm ../include/hex_numbers.inc
	$(AS) $(ASFLAGS) $<

max_eax_extended.o: max_eax_extended.asm ../include/hex_numbers.inc
	$(AS) $(ASFLAGS) $<

vendor_id.o: vendor_id.asm 
	$(AS) $(ASFLAGS) $<

dump_register_bits.o: dump_register_bits.asm ../include/hex_numbers.inc
	$(AS) $(ASFLAGS) $<

leaf_01.o: leaf_01.asm ../include/hex_numbers.inc ../include/stringops.inc
	$(AS) $(ASFLAGS) $<

.PHONY: clean

clean:
	@(rm *.o cpuid)
