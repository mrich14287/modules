resource "oci_identity_tag_default" "test_tag_default" {
  #Required
  compartment_id = var.compartment_id
  tag_definition_id = var.tag_definition_id
  value = var.tag_default_value

  #Optional
  is_required = var.tag_default_is_required
}