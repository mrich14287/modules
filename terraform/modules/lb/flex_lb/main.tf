resource oci_load_balancer_load_balancer load_balancer {
    #Required
    compartment_id = var.compartment
    display_name = var.display_name
    shape = var.shape
    subnet_ids = var.subnet_ids
    #Optional
    freeform_tags = var.freeform_tags
    is_private = var.is_private
    network_security_group_ids = var.nsg_ids
    shape_details {
        #Required
        maximum_bandwidth_in_mbps = var.max_bandwidth_in_mbps
        minimum_bandwidth_in_mbps = var.min_bandwidth_in_mbps
    }
}
