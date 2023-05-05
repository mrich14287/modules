output lb_id {
  value = data.oci_load_balancer_load_balancers.lb_lookup.load_balancers[0].id
}
output lb_ip {
  value = data.oci_load_balancer_load_balancers.lb_lookup.load_balancers[0].ip_address_details[0].ip_address
}
