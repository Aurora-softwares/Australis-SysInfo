# Australis System Information prototype

## Current status

The current source prints `Hello, World!`; it does not report system information.

`SysInfo.hyproj` builds `sys-info.exec`. The Australis OS aggregate includes
this project and installs the executable at `/Bin/sys-info.exec` in the read-only
HyFS 2 boot image. Run it by its bare name `/Bin/` through the current
recovery shell's `PATH`, or use `run /Bin/sys-info.exec`.

## Planned direction

Use versioned read-only system-information queries once the needed selectors are available.

Build this checkout with:

```bash
mkdir -p build
hy build SysInfo.hyproj -o build/sys-info.exec
```

AUEX `.exec` files currently run in the checked interpreter. Native ring-3
processes and a normal userland shell are later milestones. The boot root is
read-only; writable application data belongs on the separate `/data` volume.
The OS-level build, supported APIs, and packaging rules are described in the
Australis OS `applications/README.md`. This README describes this project's
actual source rather than treating its filename as proof of a finished feature.
