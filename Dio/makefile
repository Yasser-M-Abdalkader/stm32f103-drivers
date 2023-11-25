# Makefile for Dio Driver

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
# Makefile for Dio Driver

# Directories
DIO_DIR = Dio
SRCS_DIR = $(DIO_DIR)/src
DIO_INC_DIR = $(DIO_DIR)/include


# Source files
DIO_SRCS :=
DIO_SRCS +=\
	$(SRCS_DIR)/Dio.c
SRCS +=$(DIO_SRCS)

# Object files
DIO_OBJS := $(subst $(SRCS_DIR),$(BIN_DIR),$(DIO_SRCS))
DIO_OBJS := $(patsubst %.c,%.o,$(DIO_OBJS))
OBJS +=$(DIO_OBJS)

# include directory
INC_DIR +=\
	$(DIO_INC_DIR)
