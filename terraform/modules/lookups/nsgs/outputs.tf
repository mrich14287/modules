output nsg_ocid {
  value = data.oci_core_network_security_groups.nsg_info.network_security_groups[0].id
}