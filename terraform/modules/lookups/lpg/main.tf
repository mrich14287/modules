data "oci_core_local_peering_gateways" "lpg_lookup" {
    #Required
    compartment_id = var.compartment_id
    filter {
    name = "display_name"
    values = ["${var.display_name}"]
  } 
}
