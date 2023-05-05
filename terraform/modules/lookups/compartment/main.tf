data oci_identity_compartments compartment_lookup {
  compartment_id = var.tenancy_ocid
  compartment_id_in_subtree = true
  filter {
    name = "name"
    values = [var.compartment_name,]
  }
}