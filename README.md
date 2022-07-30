Btrfs snapshot systemd service
====================================

This makes a snapshot of subvolumes regularly and deletes old snapshots.

Install
-----------

```
make
make install
```

You need `make` and `m4`.

Start service
---------------

```
systemctl enable --now btrfs-snapshot@whatever.timer
```

You need to set `CacheDirectory` and `ReadWritePaths`.

Edit `OnCalender` parameter in `btrfs-snapshot@.timer`, if you want to configure the snapshot interval (default: hourly).

Configuration
---------------

`CacheDirectory`, `ReadWritePaths`

  Target subvolumes to be taken snapshot.
  Format: `btrfs-shanpshot/target/subvolume`

`SNAPSHOT_KEEP_UPLIMIT` (Environment)
 
  How long you keep the snapshots in seconds (default: 7days).
 
`SNAPSHOT_NAME_FORMAT` (Environment)

  Snapshots' name in `date` format (default: `%y%m%d%H`).

See details in [service file](btrfs-snapshot-hourly.service.in).

License
----------------

MIT or Public domain (whichever you want).
