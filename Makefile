# Makefile

SHELL := sh -e

SCRIPTS = frontend/* functions/* examples/auto/* examples/hooks/* scripts/*.sh scripts/*/* share/bin/* share/hooks/*/*

all: build

test:
	@echo -n "Checking for syntax errors"

	@for SCRIPT in $(SCRIPTS); \
	do \
		sh -n $${SCRIPT}; \
		echo -n "."; \
	done

	@echo " done."

	@echo -n "Checking for bashisms"

	@if [ -x /usr/bin/checkbashisms ]; \
	then \
		for SCRIPT in $(SCRIPTS); \
		do \
			checkbashisms -f -x $${SCRIPT}; \
			echo -n "."; \
		done; \
	else \
		echo "WARNING: skipping bashism test - you need to install devscripts."; \
	fi

	@echo " done."

build:
	@echo "Nothing to build."

install:
	# Installing shared data
	mkdir -p $(DESTDIR)/usr/share/live/build
	cp -r data functions VERSION.txt $(DESTDIR)/usr/share/live/build
	cp -r share/* $(DESTDIR)/usr/share/live/build

	# Installing executables
	mkdir -p $(DESTDIR)/usr/bin
	cp -a frontend/* $(DESTDIR)/usr/bin

	mkdir -p $(DESTDIR)/usr/lib/live
	cp -a scripts/* $(DESTDIR)/usr/lib/live

	# Installing documentation
	mkdir -p $(DESTDIR)/usr/share/doc/live-build
	cp -r LICENSE.txt examples $(DESTDIR)/usr/share/doc/live-build

uninstall:
	# Uninstalling shared data
	rm -rf $(DESTDIR)/usr/share/live/build
	rmdir --ignore-fail-on-non-empty $(DESTDIR)/usr/share/live > /dev/null 2>&1 || true

	# Uninstalling executables
	rm -f $(DESTDIR)/usr/bin/lb $(DESTDIR)/usr/bin/live-build

	# Uninstalling documentation
	rm -rf $(DESTDIR)/usr/share/doc/live-build

clean:

distclean:

reinstall: uninstall install
