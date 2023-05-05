######################
# Subnets 
######################
resource oci_core_subnet app_subnet {
  cidr_block                 = var.subnet_cidr_block
  display_name               = var.subnet_name
  compartment_id             = var.subnet_compartment
  vcn_id                     = var.vcn_id
  prohibit_public_ip_on_vnic = var.prohibit_public
  dns_label                  = var.dns_label
  security_list_ids          = var.security_list_ids
  dhcp_options_id            = var.dhcp_option
  route_table_id             = var.route_table_id
  freeform_tags              = var.freeform_tags
}

