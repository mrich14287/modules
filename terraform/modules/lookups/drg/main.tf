data "oci_core_drgs" "drg_lookup" {
    #Required
    compartment_id = var.compartment_id
    filter {
    name = "display_name"
    values = ["${var.display_name}"]
  }
}
