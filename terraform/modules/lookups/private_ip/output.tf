output vnic_id {
 value = data.oci_core_private_ips.private_ips_lookup.private_ips[0].vnic_id
}

output IP {
 value = data.oci_core_private_ips.private_ips_lookup.private_ips[0].ip_address
}

output id {
 value = data.oci_core_private_ips.private_ips_lookup.private_ips[0].id
}
