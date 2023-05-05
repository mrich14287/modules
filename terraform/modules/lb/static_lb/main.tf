resource oci_load_balancer_load_balancer load_balancer {
  compartment_id = var.compartment
  display_name   = var.display_name
  shape          = var.shape
  subnet_ids     = var.subnet_id
  //defined_tags =
  freeform_tags  = var.freeform_tags
  is_private                 = var.is_private
  network_security_group_ids = var.nsg_ids
}