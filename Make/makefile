# Makefile for stm32f103-drivers

# -----------------------------------------------------------------------------
# Project: stm32f103-drivers
# -----------------------------------------------------------------------------
# Description: 
#   This Makefile is used to build the stm32f103-drivers. It includes rules
#   for compiling source files, creating object files, and linking them to
#   generate the final executable.
# 
# Directory Structure:
#   - src/       : Source code files (*.c)
#   - include/   : Header files (*.h)
#   - build/     : Object files (*.o)
#   - bin/       : Executable file
# -----------------------------------------------------------------------------
# Compiler and Flags:
#   CC        : Compiler command
#   CFLAGS    : Compiler flags (e.g., -Wall, -Wextra, -g)
# -----------------------------------------------------------------------------
# Targets:
#   - all      : Default target, builds the executable
#   - clean    : Removes build and binary files
# -----------------------------------------------------------------------------
# Usage:
#   - make      : Build the project
#   - make clean: Clean the project (remove build and binary files)
# -----------------------------------------------------------------------------
# Additional Notes:
#   - Add dependencies for header files in the "Additional dependencies" section
#     using the format: $(BUILD_DIR)/example.o: $(INC_DIR)/example.h
# -----------------------------------------------------------------------------
# Makefile for MyProject

# Project name
App = driver

# Compiler and flags
#CC = Make.exe
# CFLAGS = -mcpu=cortex-m3 -mthumb -Og fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -ffreestanding -fno-move-loop-invariants -Wall -Wextra  -g3 -T STM32F103C8TX_FLASH.ld -nostartfiles -Xlinker --gc-sections -L"./" -Wl,-Map,"$(App).map" --specs=nano.specs -o "$(App).elf" $(OBJS) -Wall -Wextra -g

# Commands
REMOVE_DIR = rmdir /s /q

# Directories
MAKE_DIR = Make
OUT_DIR = Out
BIN_DIR = $(OUT_DIR)/bin

# Source files
SRCS :=
OBJS :=
INC_DIR :=

# Include Makefiles for all components
include *[!Make]/*makefile


# Phony targets

.PHONY: all

# Default target

all: drv | $(OUT_DIR)|$(BIN_DIR)
	$(CC) $(CFLAGS)

# Drviers target

.PHONY: drv
drv: $(OUT_DIR)|$(BIN_DIR)
	$(CC) -I$(INC_DIR) -o$(OBJS) -c$(SRCS)
	
# Output Directories rule

$(BIN_DIR): $(OUT_DIR)
	mkdir $(subst /,\,$(BIN_DIR))
$(OUT_DIR):
	mkdir $(subst /,\,$(OUT_DIR))


# Clean rule

.PHONY: clean
clean:
	$(REMOVE_DIR) Out 

