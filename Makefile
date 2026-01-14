PREFIX ?= /usr

BIN = $(PREFIX)/bin
LIB = $(PREFIX)/lib/arch-scripts
INSTALL = install

.PHONY: install

install:
	# bin
	if ls bin/* >/dev/null 2>&1; then \
		install -d "$(DESTDIR)$(BIN)"; \
		install -m 755 bin/* "$(DESTDIR)$(BIN)/"; \
	fi
	# libs
	if ls lib/* >/dev/null 2>&1; then \
		install -d "$(DESTDIR)$(LIB)"; \
		install -m 644 shlib/* "$(DESTDIR)$(LIB)/"; \
	fi
