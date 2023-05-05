resource oci_load_balancer_backend lb_backend {
  count            = length(var.ip_addresses)
  backendset_name  = var.bes_name
  ip_address       = var.ip_addresses[count.index]
  load_balancer_id = var.lb_id
  port             = var.target_port
  weight           = var.weight
  backup           = var.backup
}
