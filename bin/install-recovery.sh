#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/dw_mmc.0/by-name/RECOVERY:8460288:406997bb35eb899098177a6b3efcf37d3f58eaa3; then
  applypatch EMMC:/dev/block/platform/dw_mmc.0/by-name/BOOT:7966720:8e6da6fe438f3b8944acdb928606a4f0c785409a EMMC:/dev/block/platform/dw_mmc.0/by-name/RECOVERY 406997bb35eb899098177a6b3efcf37d3f58eaa3 8460288 8e6da6fe438f3b8944acdb928606a4f0c785409a:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
