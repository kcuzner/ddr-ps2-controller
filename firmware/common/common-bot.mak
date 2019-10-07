# Common build elements for this project
#
# Include this file at the bottom of the component makefile

# Build process

OBJ := $(addprefix $(OBJDIR)/,$(notdir $(SRC:.c=.o)))
OBJ += $(addprefix $(OBJDIR)/,$(notdir $(ASM:.s=.o)))
ALL_OBJ := $(OBJ)
DEP := $(addprefix $(OBJDIR)/,$(notdir $(SRC:.c=.d)))

macros:
	$(CC) $(GCFLAGS) -dM -E - < /dev/null

clean:
	$(RM) $(BINDIR)
	$(RM) $(OBJDIR)

size:
	$(SIZE) $(BINDIR)/$(BINARY).elf

# Flash programming

install: $(BINDIR)/$(BINARY).hex
	$(AVRDUDE) -c $(PROGRAMMER) -p $(PMCU) -e -U flash:w:$(BINDIR)/$(PROJECT).hex

fuse: $(BINDIR)/$(FUSES).bin
	$(AVRDUDE) -c $(PROGRAMMER) -p $(PMCU) -U lfuse:w:0x$(shell dd if=$< bs=1 count=1 | od -An -t x1 | tr -d ' '):m
	$(AVRDUDE) -c $(PROGRAMMER) -p $(PMCU) -U hfuse:w:0x$(shell dd if=$< bs=1 skip=1 count=1 | od -An -t x1 | tr -d ' '):m

# Compilation

$(BINDIR)/$(FUSES).bin: $(BINDIR)/$(BINARY).elf
	$(OBJCOPY) -j .fuse -O binary $< $@

$(BINDIR)/$(BINARY).hex: $(BINDIR)/$(BINARY).elf
	$(OBJCOPY) -O ihex $(OBJCOPY_FLGAS) $< $@

$(BINDIR)/$(BINARY).bin: $(BINDIR)/$(BINARY).elf
	$(OBJCOPY) -O binary $(OBJCOPY_FLAGS) $< $@

$(BINDIR)/$(BINARY).elf: $(ALL_OBJ)
	@mkdir -p $(dir $@)
	$(CC) $(ALL_OBJ) $(LDFLAGS) -o $@
	$(OBJDUMP) -D $@ > $(BINDIR)/$(BINARY).lst
	$(SIZE) -C --mcu=$(MCU) $@

# Generates compilation rules for the directory in $1
#
# Note to self: The double-dollar sign escapes the $ so that it doesn't get
# evaluated when this function is generated, but instead gets evaluated when
# Make is actually making.
define build_gcc_rules
$$(OBJDIR)/%.o: $1/%.c Makefile
	@mkdir -p $$(dir $$@)
	$$(CC) $$(GCFLAGS) -MMD -c $$< -o $$@
endef
define build_asm_rules
$$(OBJDIR)/%.o: $1/%.s Makefile
	@mkdir -p $$(dir $$@)
	$$(AS) $$(ASFLAGS) -o $$@ $$<
endef

# Generate rules for each source directory
$(foreach DIR,$(CSRCDIRS),$(eval $(call build_gcc_rules,$(DIR))))
$(foreach DIR,$(SSRCDIRS),$(eval $(call build_asm_rules,$(DIR))))

-include $(DEP)

