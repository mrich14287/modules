output compartment_id {
  value = data.oci_identity_compartments.compartment_lookup.compartments[0].id
}

output compartment_name {
  value = data.oci_identity_compartments.compartment_lookup.compartments[0].name
}