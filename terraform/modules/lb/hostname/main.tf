resource oci_load_balancer_hostname lb_hostname {
  hostname         = var.hostname_url
  load_balancer_id = var.lb_id
  name             = var.display_name
}