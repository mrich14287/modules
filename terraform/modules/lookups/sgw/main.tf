data "oci_core_service_gateways" "sgw_lookup" {
    #Required
    compartment_id = var.compartment_id
    filter {
    name = "display_name"
    values = ["${var.display_name}"]
   }
}
