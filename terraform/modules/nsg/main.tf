resource oci_core_network_security_group nsg_new {
  compartment_id = var.compartment_in
  vcn_id         = var.vcn_in
  display_name   = var.nsg_name
}