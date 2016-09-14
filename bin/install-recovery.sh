#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/dw_mmc.0/by-name/RECOVERY:7657472:72abbd636a46c64dd86a810396301a4b7c615d57; then
  applypatch EMMC:/dev/block/platform/dw_mmc.0/by-name/BOOT:7444480:e4a59abd2aad581e1f8be765c6577f5a9e1c51c6 EMMC:/dev/block/platform/dw_mmc.0/by-name/RECOVERY 72abbd636a46c64dd86a810396301a4b7c615d57 7657472 e4a59abd2aad581e1f8be765c6577f5a9e1c51c6:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
