resource "oci_identity_compartment" "project_compartment" {
    #Required
    compartment_id = var.parent_id
    description    = var.description
    name           = var.name
}


