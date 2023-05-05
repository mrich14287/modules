output bv_backup_info {
  value = data.oci_core_boot_volume_backups.boot_volume_backup.boot_volume_backups[0].id
}