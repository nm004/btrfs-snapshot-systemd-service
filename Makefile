DESTDIR?=
PREFIX?=/usr/local
SYSTEMD_PREFIX?=$(PREFIX)

all: createsnapshot cleansnapshots btrfs-snapshot@.service btrfs-snapshot@.timer

btrfs-snapshot@.service: btrfs-snapshot@.service.in
	m4 -DPREFIX='$(PREFIX)' $< > $@

install: all
	install -Dt '$(DESTDIR)$(PREFIX)/libexec/btrfs-snapshot' createsnapshot cleansnapshots
	install -m644 -Dt '$(DESTDIR)$(SYSTEMD_PREFIX)/systemd/system' btrfs-snapshot@.service btrfs-snapshot@.timer

.PHONY: all
