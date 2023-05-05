output dhcp_info_id {
  value    = data.oci_core_dhcp_options.dhcp_info.options[0].id
}