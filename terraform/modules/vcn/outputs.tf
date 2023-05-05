output vcn_info_id {
  value = oci_core_vcn.target_vcn.id
}

output vcn_info_name {
  value = oci_core_vcn.target_vcn.display_name
}

output sl_id {
  value = oci_core_vcn.target_vcn.default_security_list_id
}

output route_id {
  value = oci_core_vcn.target_vcn.default_route_table_id
}

output default_dhcp_options_id {
  value = oci_core_vcn.target_vcn.default_dhcp_options_id
}
