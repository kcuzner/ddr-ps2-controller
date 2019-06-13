# DDR PS2 Controller Firmware
#
# Kevin Cuzner
#
# Top-level makefile
#
# Invoke this makefile to build both the controller and switch firmware.

TARGET = $(word 1, $(MAKECMDGOALS))
COMPONENTS = $(wordlist 2,$(words $(MAKECMDGOALS)),$(MAKECMDGOALS))

SUBDIRS = controller switch
MAKE_SUBDIRS = $(filter $(if $(COMPONENTS),$(COMPONENTS),%),$(SUBDIRS))

.PHONY: $(SUBDIRS) $(TARGET)

all $(TARGET): $(MAKE_SUBDIRS)

$(SUBDIRS):
	@make -C $@ $(TARGET)


