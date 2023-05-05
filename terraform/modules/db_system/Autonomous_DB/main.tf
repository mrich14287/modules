resource "oci_database_autonomous_database" "autonomous_database" {
  #Required
  compartment_id = var.compartment_id
  db_name = var.db_name

  #Optional
  admin_password = var.db_pass
   cpu_core_count = var.cpu_core_count
  customer_contacts {
#    Optional
    email = var.customer_contacts_email
  }
  data_safe_status = var.data_safe_status
  data_storage_size_in_tbs = var.size_in_tbs
  db_version = var.db_version
  db_workload = var.DB_workload
  display_name = var.db_name
  freeform_tags = var.dbsysfreetag
  is_auto_scaling_enabled = var.auto_scaling_enabled
  is_data_guard_enabled = var.data_guard_enabled
  is_dedicated = var.is_dedicated
  is_free_tier = var.is_free_tier
  license_model = var.db_license
  nsg_ids = var.nsg_ids
  private_endpoint_label = var.db_name
  subnet_id = var.subnet_id
  switchover_to = var.switchover_to
}
