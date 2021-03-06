include config.mk

all:
	@echo no need to build

install:
	mkdir -p ${DESTDIR}${PREFIX}/bin
	install -m 755 drawterm      ${DESTDIR}${PREFIX}/bin/drawterm
	install -m 755 icon          ${DESTDIR}${PREFIX}/bin/icon
	install -m 755 iconcache     ${DESTDIR}${PREFIX}/bin/iconcache
	install -m 755 mpdnotify     ${DESTDIR}${PREFIX}/bin/mpdnotify
	install -m 755 run           ${DESTDIR}${PREFIX}/bin/run
	install -m 755 samedir       ${DESTDIR}${PREFIX}/bin/samedir
	install -m 755 xman          ${DESTDIR}${PREFIX}/bin/xman
	install -m 755 xopen         ${DESTDIR}${PREFIX}/bin/xopen
	mkdir -p ${DESTDIR}${MANPREFIX}/man1
	install -m 644 drawterm.1    ${DESTDIR}${MANPREFIX}/man1/drawterm.1
	install -m 644 icon.1        ${DESTDIR}${MANPREFIX}/man1/icon.1
	install -m 644 iconcache.1   ${DESTDIR}${MANPREFIX}/man1/iconcache.1
	install -m 644 mpdnotify.1   ${DESTDIR}${MANPREFIX}/man1/mpdnotify.1
	install -m 644 run.1         ${DESTDIR}${MANPREFIX}/man1/run.1
	install -m 644 samedir.1     ${DESTDIR}${MANPREFIX}/man1/samedir.1
	install -m 644 xman.1        ${DESTDIR}${MANPREFIX}/man1/xman.1
	install -m 644 xopen.1       ${DESTDIR}${MANPREFIX}/man1/xopen.1

uninstall:
	rm -f ${DESTDIR}${PREFIX}/bin/drawterm
	rm -f ${DESTDIR}${PREFIX}/bin/icon
	rm -f ${DESTDIR}${PREFIX}/bin/iconcache
	rm -f ${DESTDIR}${PREFIX}/bin/mpdnotify
	rm -f ${DESTDIR}${PREFIX}/bin/run
	rm -f ${DESTDIR}${PREFIX}/bin/samedir
	rm -f ${DESTDIR}${PREFIX}/bin/xman
	rm -f ${DESTDIR}${PREFIX}/bin/xopen
	rm -f ${DESTDIR}${MANPREFIX}/man1/drawterm.1
	rm -f ${DESTDIR}${MANPREFIX}/man1/icon.1
	rm -f ${DESTDIR}${MANPREFIX}/man1/iconcache.1
	rm -f ${DESTDIR}${MANPREFIX}/man1/mpdnotify.1
	rm -f ${DESTDIR}${MANPREFIX}/man1/run.1
	rm -f ${DESTDIR}${MANPREFIX}/man1/samedir.1
	rm -f ${DESTDIR}${MANPREFIX}/man1/xman.1
	rm -f ${DESTDIR}${MANPREFIX}/man1/xopen.1

.PHONY: all install uninstall
