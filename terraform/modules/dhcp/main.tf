resource oci_core_dhcp_options mhe_dhcp {
  compartment_id = var.compartment_id
  defined_tags   = {}
  display_name  = var.dhcp_display_name
  freeform_tags = var.freeform_tags
  options {
    type        = "DomainNameServer"
    server_type = "VcnLocalPlusInternet"
  }
  options {
    type = "SearchDomain"
    search_domain_names = [
      var.dns_search,
    ]
  }
  vcn_id = var.vcn_id
}
