data oci_core_volumes volume_info {
  compartment_id      = var.compartment_id
  availability_domain = "MYBl:US-ASHBURN-AD-${var.bv_ad}"
  display_name        = var.display_name
}
