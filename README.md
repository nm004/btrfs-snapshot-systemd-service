Btrfs snapshot systemd service
====================================

This makes a snapshot of subvolumes regularly and deletes old snapshots (optional).

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
systemctl enable --now btrfs-snapshot@hourly.timer
```

You need to set `CacheDirectory` and `ReadWritePaths`.

Configuration
---------------

`CacheDirectory`, `ReadWritePaths`

  Target subvolumes to be taken snapshot.
  Format: `btrfs-shanpshot/target/subvolume`

`SNAPSHOT_KEEP_UPLIMIT` (Environment)
 
  How long this keeps the snapshots in seconds (default: never delete).
 
`SNAPSHOT_NAME_FORMAT` (Environment)

  Snapshots' name in `date` format (default: `%y%m%d%H`).

See details in [service file](btrfs-snapshot-hourly.service.in).

License
----------------

MIT or Public domain (whichever you want).
