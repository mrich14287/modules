output "namespace_id" {
  value = data.oci_identity_tag_namespaces.tag_namespaces[0].id
}

output "namespace_name" {
  value = data.oci_identity_tag_namespaces.tag_namespaces.tag_namespaces
}