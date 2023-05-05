data oci_core_volume_backups bv_backup {
  compartment_id = var.compartment_id
  display_name   = var.backup_name
  volume_id      = var.volume_source
}