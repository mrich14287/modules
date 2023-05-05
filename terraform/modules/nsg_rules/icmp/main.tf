resource oci_core_network_security_group_security_rule icmp_ingress {
  count                     = var.ingress ? 1 : 0
  direction                 = "INGRESS"
  network_security_group_id = var.nsg_id
  protocol                  = "1"
  description               = var.description

  source      = var.source_destination_value
  source_type = var.source_destination_type

  icmp_options {
    type = var.icmp_type
  }
}

resource oci_core_network_security_group_security_rule icmp_egress {
  count                     = var.ingress ? 0 : 1
  direction                 = "EGRESS"
  network_security_group_id = var.nsg_id
  protocol                  = "1"
  description               = var.description

  destination      = var.source_destination_value
  destination_type = var.source_destination_type

  icmp_options {
    type = var.icmp_type
  }
}