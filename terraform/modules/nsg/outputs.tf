output nsg_id {
  value = oci_core_network_security_group.nsg_new.id
}

output nsg_name {
  value = oci_core_network_security_group.nsg_new.display_name
}