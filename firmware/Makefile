# DDR PS2 Controller Firmware
#
# Kevin Cuzner
#
# Top-level makefile
#
# Invoke this makefile to build both the controller and switch firmware

SUBDIRS = controller switch

.PHONY: all clean $(SUBDIRS)

all: $(SUBDIRS)

clean: $(SUBDIRS)

$(SUBDIRS):
	@make -C $@ $(MAKECMDGOALS)


