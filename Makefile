# =============================================	#
# Makefile					#
# ============================================= #
SHELL=PATH='$(PATH)' /bin/bash

PRO_NAME := nbs-chat

OS := $(shell uname -o) 
PLATFORM := $(shell uname -a)
EXTEND := .exe

ifeq ($(OS),Msys) 
	WINDOWS := 1
	INCLUDE := ${shell echo "$(GOPATH)" | sed -e 's/\\/\//g'}
	FLAG := 1
else ifeq ($(OS),Cygwin)
	WINDOWS := 1
	INCLUDE := ${shell echo "$(GOPATH)" | sed -e 's/\\/\//g'}
	FLAG := 2
else
	INCLUDE := $(GOPATH)
	EXTEND :=
	FLAG := 3
endif

SERVER_EXEC := $(PRO_NAME)$(EXTEND)

#enable second expansion
.SECONDEXPANSION :
	@ehco $(OS)

	INCLUDE := ${shell echo "$(GOPATH)" | sed -e 's/\\/\//g'}

.PHONY : all clean


all : 
	@echo "$(OS)"
	@echo $(INCLUDE)
	@echo $(FLAG)






