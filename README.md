Btrfs snapshot systemd service
====================================

This makes a snapshot of subvolumes hourly and deletes old snapshots (optional).

Install
-----------

```
make
make install
```

You need `make` and `m4`.

Configuration
---------------

`SNAPSHOT_KEEP_UPLIMIT` (Environment)
 
  How long this keeps the snapshots in seconds (default: never delete).
 
`SNAPSHOT_NAME_FORMAT` (Environment)

  Snapshots' name in `date` format (default: `%y%m%d%H`).

`CacheDirectory`, `ReadWritePaths`

  Target subvolumes to be taken snapshot.
  Format: `btrfs-shanpshot/target/subvolume`

See details in [service file](btrfs-snapshot-hourly.service.in).

License
----------------

MIT or Public domain (whichever you want).
