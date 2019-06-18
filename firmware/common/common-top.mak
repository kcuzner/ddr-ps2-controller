# Common build elements for this project
#
# Include this file at the top of the component makefile

# Binary target
BINARY = $(PROJECT)
FUSES = $(BINARY)-fuses

# Project structure
SRCDIRS = src
BINDIR = bin
OBJDIR = obj
INCDIRS = include
COMDIR = ../common
CSRCDIRS = $(SRCDIRS) $(COMDIR)/src
SSRCDIRS = $(SRCDIRS)
LIBS =

# Project Target
MCU = attiny20
F_CPU=8000000
PROGRAMMER = usbasp
PMCU = t20

# Sources
SRC = $(foreach DIR,$(CSRCDIRS),$(wildcard $(DIR)/*.c))
ASM = $(foreach DIR,$(SSRCDIRS),$(wildcard $(DIR)/*.s))

# Include directories
INCLUDE = $(foreach DIR,$(INCDIRS),-I$(DIR)) -I. -I$(COMDIR)/include
LDINCLUDE = $(foreach DIR,$(LDINCDIRS),-L$(DIR))

# C Flags
GCFLAGS = $(INCLUDE) -std=c11 -Wall -Os -DF_CPU=$(F_CPU) -g -mmcu=$(MCU) -Os -fpack-struct -fshort-enums\
		  -funsigned-bitfields -funsigned-char -Wstrict-prototypes -ffunction-sections -fdata-sections \
		  -Wa,-ahlms=$(addprefix $(OBJDIR)/,$(notdir $(<:.c=.lst)))
ASFLAGS = $(INCLUDE) D_FCPU=$(F_CPU) -mmcu=$(MCU) -x assember-with-cpp\
		  -Wa,-gstabs-ahlms=$(addprefix $(OBJDIR)/,$(notdir $(<:.s=.lst)))
LDFLAGS=-Wl,--gc-sections -mmcu=$(MCU) -lm $(LIBS)

# Tools
CC = avr-gcc
OBJCOPY = avr-objcopy
OBJDUMP = avr-objdump
SIZE = avr-size --format=SysV
AVRDUDE = avrdude
MKDIR = mkdir
RM = rm -rf

