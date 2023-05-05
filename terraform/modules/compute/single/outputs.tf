output compute_instance {
  value = oci_core_instance.compute_instance.id
}

output private_ip {
  value = oci_core_instance.compute_instance.private_ip
}