resource oci_core_network_security_group_security_rule udp_ingress_unique {
  count                     = var.ingress ? 1 : 0
  direction                 = "INGRESS"
  network_security_group_id = var.nsg_id
  protocol                  = "17"
  description               = var.description

  source      = var.source_destination_value
  source_type = var.source_destination_type

  udp_options {
    source_port_range {
      max = var.max_port_range
      min = var.min_port_range
    }
  }
}

resource oci_core_network_security_group_security_rule udp_egress_unique {
  count                     = var.ingress ? 0 : 1
  direction                 = "EGRESS"
  network_security_group_id = var.nsg_id
  protocol                  = "17"
  description               = var.description

  destination      = var.source_destination_value
  destination_type = var.source_destination_type

  udp_options {
    destination_port_range {
      max = var.max_port_range
      min = var.min_port_range
    }
  }
}