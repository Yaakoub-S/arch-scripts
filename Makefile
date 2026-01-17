PREFIX ?= /usr
BIN = $(PREFIX)/bin
LIB = $(PREFIX)/lib/arch-scripts

BIN_FILES := $(wildcard bin/*)
LIB_FILES := $(wildcard lib/*)

.PHONY: install

install:
	@# bin
	@if [ -n "$(BIN_FILES)" ]; then \
		install -m 755 $(BIN_FILES) "$(DESTDIR)$(BIN)/"; \
	fi
	@# libs
	@if [ -n "$(LIB_FILES)" ]; then \
		install -d "$(DESTDIR)$(LIB)"; \
		install -m 644 $(LIB_FILES) "$(DESTDIR)$(LIB)/"; \
	fi
