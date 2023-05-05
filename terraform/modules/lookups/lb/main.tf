data "oci_load_balancer_load_balancers" "lb_lookup" {
    compartment_id  = var.compartment_id
    display_name    = var.lb_display_name
    detail          = "full"
}
