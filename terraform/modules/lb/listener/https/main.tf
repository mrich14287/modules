resource oci_load_balancer_listener lb_listener {
  default_backend_set_name = var.default_bes
  load_balancer_id         = var.lb_id
  name                     = var.display_name
  port                     = var.listen_port
  protocol                 = var.protocol
  hostname_names           = var.hostnames
  rule_set_names           = var.rule_sets
  routing_policy_name      = var.routing_policy_name

  ssl_configuration {
    #Required
    certificate_name = var.cert_name

    #Optional
    verify_depth = var.cert_depth
    verify_peer_certificate = var.verify_peer
  }
}