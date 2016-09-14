#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/dw_mmc.0/by-name/RECOVERY:8398848:f4f321304eeffcd97f55d1987860060456b2bca6; then
  applypatch EMMC:/dev/block/platform/dw_mmc.0/by-name/BOOT:7913472:d148ffa558cb74ba12968ce42eeadf817dae91f9 EMMC:/dev/block/platform/dw_mmc.0/by-name/RECOVERY f4f321304eeffcd97f55d1987860060456b2bca6 8398848 d148ffa558cb74ba12968ce42eeadf817dae91f9:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
