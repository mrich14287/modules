output subnet_id_info {
  value = data.oci_core_subnets.subnet_ocid.subnets[0].id
}

output subnet_cidr_info {
  value = data.oci_core_subnets.subnet_ocid.subnets[0].cidr_block
}