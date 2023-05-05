data "oci_core_nat_gateways" "nat_lookup" {
    #Required
    compartment_id = var.compartment_id
    filter {
    name = "display_name"
    values = ["${var.display_name}"]
  }
}
