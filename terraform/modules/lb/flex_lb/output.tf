output lb_id {
    value = oci_load_balancer_load_balancer.load_balancer.id
}
output lb_ip {
    value = oci_load_balancer_load_balancer.load_balancer.ip_address_details[0].ip_address
}
