

resource oci_core_vcn target_vcn {
  dns_label      = var.dns_label
  cidr_block     = var.cidr_block
  compartment_id = var.compartment_id
  display_name   = var.display_name
  freeform_tags  = var.freeform_tags
  is_ipv6enabled = var.vcn_is_ipv6enabled
}


