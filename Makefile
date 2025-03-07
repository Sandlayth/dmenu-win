PREFIX    ?= /usr/local
BINPREFIX := $(DESTDIR)$(PREFIX)/bin

SCRIPT = dmenu-win

all:

install:
	@command -v xprop >/dev/null 2>&1 || { echo "Error: xprop is not installed. Please install it first."; exit 1; }
	@command -v xdotool >/dev/null 2>&1 || { echo "Error: xdotool is not installed. Please install it first."; exit 1; }
	install -d ${BINPREFIX}
	install ${SCRIPT} ${BINPREFIX}
	@echo "dmenu-win installed successfully."

uninstall:
	rm -f $(PREFIX)/bin/${SCRIPT}
	@echo "dmenu-win uninstalled successfully."

.PHONY: all install uninstall
