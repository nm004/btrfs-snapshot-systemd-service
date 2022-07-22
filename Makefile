DESTDIR?=
PREFIX?=/usr/local
SYSTEMD_PREFIX?=/etc

btrfs-snapshot-hourly.service: btrfs-snapshot-hourly.service.in
	m4 -DPREFIX='$(PREFIX)' $< > $@
	
install: btrfs-snapshot-hourly.service
	install -Dt '$(DESTDIR)$(PREFIX)/libexec/btrfs-snapshot' createsnapshot cleansnapshots
	install -m644 -Dt '$(DESTDIR)$(SYSTEMD_PREFIX)/systemd/system btrfs-snapshot-hourly.service' btrfs-snapshot-hourly.service btrfs-snapshot-hourly.timer
