#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/dw_mmc.0/by-name/RECOVERY:8462336:ce5396ebe69cd54e73c8f775b8672abb3aac4a18; then
  applypatch EMMC:/dev/block/platform/dw_mmc.0/by-name/BOOT:7968768:0291d8b5209e4e662c6ed8436509540bf3dda49f EMMC:/dev/block/platform/dw_mmc.0/by-name/RECOVERY ce5396ebe69cd54e73c8f775b8672abb3aac4a18 8462336 0291d8b5209e4e662c6ed8436509540bf3dda49f:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
