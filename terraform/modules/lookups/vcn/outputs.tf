output vcn_info_id {
  value = data.oci_core_vcns.target_vcn.virtual_networks[0].id
}

output vcn_info_name {
  value = data.oci_core_vcns.target_vcn.virtual_networks[0].display_name
}