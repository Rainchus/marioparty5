ifneq ($(findstring MINGW,$(shell uname)),)
  WINDOWS := 1
endif
ifneq ($(findstring MSYS,$(shell uname)),)
  WINDOWS := 1
endif

# If 0, tells the console to chill out. (Quiets the make process.)
VERBOSE ?= 0

# If MAPGENFLAG set to 1, tells LDFLAGS to generate a mapfile, which makes linking take several minutes.
MAPGENFLAG ?= 1

ifeq ($(VERBOSE),0)
  QUIET := @
endif

#-------------------------------------------------------------------------------
# Files
#-------------------------------------------------------------------------------

NAME := mp5
VERSION ?= 1
#VERSION := usa.demo

# Overkill epilogue fixup strategy. Set to 1 if necessary.
EPILOGUE_PROCESS := 0

BUILD_DIR := build/$(NAME).$(VERSION)
ifeq ($(EPILOGUE_PROCESS),1)
EPILOGUE_DIR := epilogue/$(NAME).$(VERSION)
endif

# Inputs
S_FILES := $(wildcard asm/*.s)
C_FILES := $(wildcard src/*.c)
CPP_FILES := $(wildcard src/*.cpp)
CPP_FILES += $(wildcard src/*.cp)
LDSCRIPT_DOL := $(BUILD_DIR)/ldscript.lcf
LDSCRIPT_REL := $(BUILD_DIR)/partial.lcf
ELF2REL_ARGS := -i 1 -o 0x0 -l 0x2F -c 14
REL_LDFLAGS := -nodefaults -fp hard -r1 -m _prolog -g

# Outputs
DOL     := $(BUILD_DIR)/main.dol
ELF     := $(DOL:.dol=.elf)
MAP     := $(BUILD_DIR)/MarioParty5.MAP


ifeq ($(MAPGENFLAG),1)
  MAPGEN := -map $(MAP)
endif

include obj_files.mk
ifeq ($(EPILOGUE_PROCESS),1)
include e_files.mk
endif

O_FILES := $(INIT_O_FILES) $(EXTAB_O_FILES) $(EXTABINDEX_O_FILES) $(TEXT_O_FILES) \
           $(CTORS_O_FILES) $(DTORS_O_FILES) $(RODATA_O_FILES) $(DATA_O_FILES)    \
           $(BSS_O_FILES) $(SDATA_O_FILES) $(SBSS_O_FILES) $(SDATA2_O_FILES) 	  \
		   $(SBSS2_O_FILES)
ifeq ($(EPILOGUE_PROCESS),1)
E_FILES :=	$(EPILOGUE_UNSCHEDULED)
endif
#-------------------------------------------------------------------------------
# Tools
#-------------------------------------------------------------------------------

MWCC_VERSION := 2.6
ifeq ($(EPILOGUE_PROCESS),1)
MWCC_EPI_VERSION := 1.2.5
MWCC_EPI_EXE := mwcceppc.exe
endif
MWLD_VERSION := 2.6

# Programs
ifeq ($(WINDOWS),1)
  WINE :=
  AS      := $(DEVKITPPC)/bin/powerpc-eabi-as.exe
  CPP     := $(DEVKITPPC)/bin/powerpc-eabi-cpp.exe -P
else
  WINE ?= wine
  AS      := $(DEVKITPPC)/bin/powerpc-eabi-as
  CPP     := $(DEVKITPPC)/bin/powerpc-eabi-cpp -P
endif
CC      = $(WIBO) tools/mwcc_compiler/$(MWCC_VERSION)/mwcceppc.exe
ifeq ($(EPILOGUE_PROCESS),1)
CC_EPI  = $(WIBO) tools/mwcc_compiler/$(MWCC_EPI_VERSION)/$(MWCC_EPI_EXE)
endif
LD      := $(WIBO) tools/mwcc_compiler/$(MWLD_VERSION)/mwldeppc.exe
ELF2DOL := tools/elf2dol
ELF2REL := tools/elf2rel
SHA1SUM := sha1sum
PYTHON  := python3

FRANK := tools/franklite.py

# Options
INCLUDES := -i include/
ASM_INCLUDES := -I include/

ASFLAGS := -mgekko $(ASM_INCLUDES)
ifeq ($(VERBOSE),1)
# this set of LDFLAGS outputs warnings.
LDFLAGS := $(MAPGEN) -fp hard -nodefaults
endif
ifeq ($(VERBOSE),0)
# this set of LDFLAGS generates no warnings.
LDFLAGS := $(MAPGEN) -fp hard -nodefaults -w off
endif
CFLAGS   = -Cpp_exceptions off -proc gekko -fp hard -Os -nodefaults $(INCLUDES)

ifeq ($(VERBOSE),0)
# this set of ASFLAGS generates no warnings.
ASFLAGS += -W
endif

#-------------------------------------------------------------------------------
# Recipes
#-------------------------------------------------------------------------------

### Default target ###

default: all

all: $(DOL)

ALL_DIRS := $(sort $(dir $(O_FILES)))
ifeq ($(EPILOGUE_PROCESS),1)
EPI_DIRS := $(sort $(dir $(E_FILES)))
endif

# Make sure build directory exists before compiling anything
DUMMY != mkdir -p $(ALL_DIRS)

# ifeq ($(EPILOGUE_PROCESS),1)
# Make sure profile directory exists before compiling anything
# DUMMY != mkdir -p $(EPI_DIRS)
# endif

.PHONY: tools

$(LDSCRIPT_DOL): lcf/ldscript.lcf
	$(QUIET) $(CPP) -MMD -MP -MT $@ -MF $@.d -I include/ -I . -DBUILD_DIR=$(BUILD_DIR) -o $@ $<

$(DOL): $(ELF) | tools
	$(QUIET) $(ELF2DOL) $< $@
	$(QUIET) $(SHA1SUM) -c sha1/$(NAME).$(VERSION).sha1
ifneq ($(findstring -map,$(LDFLAGS)),)
#	$(QUIET) $(PYTHON) tools/calcprogress.py $@
endif

clean:
	rm -f -d -r build
	rm -f -d -r epilogue
	find . -name '*.o' -exec rm {} +
	find . -name 'ctx.c' -exec rm {} +
	$(MAKE) -C tools clean
tools:
	$(MAKE) -C tools

# ELF creation makefile instructions
ifeq ($(EPILOGUE_PROCESS),1)
	@echo Linking ELF $@
$(ELF): $(O_FILES) $(E_FILES) $(LDSCRIPT_DOL)
	$(QUIET) @echo $(O_FILES) > build/o_files
	$(QUIET) $(LD) $(LDFLAGS) -o $@ -lcf $(LDSCRIPT_DOL) @build/o_files
else
$(ELF): $(O_FILES) $(LDSCRIPT_DOL)
	@echo Linking ELF $@
	$(QUIET) @echo $(O_FILES) > build/o_files
	$(QUIET) $(LD) $(LDFLAGS) -o $@ -lcf $(LDSCRIPT_DOL) @build/o_files
endif

$(BUILD_DIR)/%.o: %.s
	@echo Assembling $<
	$(QUIET) $(AS) $(ASFLAGS) -o $@ $<

$(BUILD_DIR)/%.o: %.c
	@echo "Compiling " $<
	$(QUIET) $(CC) $(CFLAGS) -c -o $@ $<

$(BUILD_DIR)/%.o: %.cp
	@echo "Compiling " $<
	$(QUIET) $(CC) $(CFLAGS) -c -o $@ $<
	
$(BUILD_DIR)/%.o: %.cpp
	@echo "Compiling " $<
	$(QUIET) $(CC) $(CFLAGS) -c -o $@ $<

ifeq ($(EPILOGUE_PROCESS),1)
$(EPILOGUE_DIR)/%.o: %.c $(BUILD_DIR)/%.o
	@echo Frank is fixing $<
	$(QUIET) $(PYTHON) $(FRANK) $(word 2,$^) $(word 2,$^)

$(EPILOGUE_DIR)/%.o: %.cp $(BUILD_DIR)/%.o
	@echo Frank is fixing $<
	$(QUIET) $(PYTHON) $(FRANK) $(word 2,$^) $(word 2,$^)

$(EPILOGUE_DIR)/%.o: %.cpp $(BUILD_DIR)/%.o
	@echo Frank is fixing $<
	$(QUIET) $(PYTHON) $(FRANK) $(word 2,$^) $(word 2,$^)
endif
# If we need Frank, add the following after the @echo
# $(QUIET) $(CC_EPI) $(CFLAGS) -c -o $@ $<

### Debug Print ###

print-% : ; $(info $* is a $(flavor $*) variable set to [$($*)]) @true
