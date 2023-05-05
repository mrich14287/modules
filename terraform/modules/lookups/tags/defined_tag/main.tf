data "oci_identity_tag" "tag_id" {
  #Required
  tag_name = var.defined_tag_name
  tag_namespace_id = var.namespace_id
}