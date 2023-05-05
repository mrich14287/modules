resource oci_core_boot_volume boot_volume {
  availability_domain = "MYBl:US-ASHBURN-AD-${var.bv_ad}"
  compartment_id      = var.compartment_id
  display_name        = var.display_name
  source_details {
    id                = var.source_id
    type              = var.source_type
  }
}