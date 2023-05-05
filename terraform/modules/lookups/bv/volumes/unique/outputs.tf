output vcn_id {
  description = "ocid of created VCN. "
  value       = data.oci_core_vcns.target_vcn.virtual_networks[0].id
}

output default_security_list_id {
  description = "ocid of default security list. "
  value       = data.oci_core_vcns.target_vcn.id
}


output "subnet_id" {
  description = "ocid of subnet ids. "
  value       = oci_core_subnet.<<subnet_label>>.id
}