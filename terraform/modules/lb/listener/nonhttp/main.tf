resource oci_load_balancer_listener lb_listener {
  default_backend_set_name = var.default_bes
  load_balancer_id         = var.lb_id
  name                     = var.display_name
  port                     = var.listen_port
  protocol                 = var.protocol
}