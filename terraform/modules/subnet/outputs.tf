output subnet_id {
  value = oci_core_subnet.app_subnet.id
}

output subnet_cidr {
  value = oci_core_subnet.app_subnet.cidr_block
}
