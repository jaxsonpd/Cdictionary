# @Brief: Makefile for testing the C dictionary module
# @Author: Jack Duignan (JackpDuignan@gmail.com)

# Ensure file is run in ps to improve Linux compatibility
ifeq ($(OS), Windows_NT)
	SHELL := powershell.exe
	.SHELLFLAGS := -NoProfile -Command
endif

# Compiler
CC = gcc
CFLAGS = -Wall -Werror -Wextra -pedantic -g

# Targets
# Test string to int dictionary
all: dictionary

dictionary: ./dictionary.o 
	$(CC) $(CFLAGS) $^ -o $@ -lm

dictionary.o: ./dictionary.c ./dictionary.h
	$(CC) $(CFLAGS) -c $< -o $@

#dictionaryTest: dictionaryTest.o ../dictionary.o
#	$(CC) $(CFLAGS) $^ -o $@ -lm
#	.\dictionaryTest
#
#dictionaryTest: dictionaryTest.c ../dictionary.h
#	$(CC) $(CFLAGS) -c $< -o $@
#
#dictionary: ../dictionary.c ../dictionary.h
#	$(CC) $(CFLAGS) -c $< -o $@

# Clean up
.PHONY: clean
clean:
	rm *.o
	rm *.exe
