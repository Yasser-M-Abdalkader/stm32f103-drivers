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

# Compiler and flags
CC = "./gcc-arm-none-eabi-10.3-2021.10-win32/gcc-arm-none-eabi-10.3-2021.10/bin/arm-none-eabi-g++.exe"
CFLAGS = -Wall -Wextra -g

# Directories
ROOT_DIR = ..
SRC_DIR = "$(ROOT_DIR)/src"
INC_DIR = "$(ROOT_DIR)/include"
BUILD_DIR = "$(ROOT_DIR)/build"
BIN_DIR = bin
MAKE_DIR = .


# Source files
#SRCS = ($(SRC_DIR)/*.c)
# SRCS :=
#INCLUDES :=

#include $(ROOT_DIR)/*/*mk
DIO_DIR = \
	$(ROOT_DIR)/Dio

# Source files
SRCS = $(DIO_DIR)/src/Hello.c

# Include directory
INCLUDES = $(DIO_DIR)/include/

OBJS = $(patsubst %.c, %.o, ($(SRCS)))

# Executable name
#TARGET = Yasser.o

# Include directories
#INCLUDES = -I$(INC_DIR)


# Phony targets
.PHONY: all

# Default target
all: TARGET

# Rule to build the executable
#$(TARGET): $(OBJS) | $(BIN_DIR)
#$(CC) $(CFLAGS) $(INCLUDES) $^ -o $@

# Rule to build object files
TARGET: $(BUILD_DIR)
	$(CC) -I $(INC_DIR) -o $(OBJS) -c  $(SRCS)

# Create directories if they don't exist

$(BUILD_DIR):
	mkdir $(BUILD_DIR)

#$(BIN_DIR):
#	mkdir $(ROOT_DIR)\$(BIN_DIR)

# Clean rule

.PHONY: clean
clean:
	rm  $(BUILD_DIR) 

# Additional dependencies (e.g., header files)
# Add dependencies like this:
# $(BUILD_DIR)/example.o: $(INC_DIR)/example.h
