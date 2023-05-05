variable "subnet_cidr_block" {
  description = "Cidr block assigned to subnet"
}

variable subnet_compartment {
  description = "Provide the target compartment for placing the subnet"
}

variable vcn_id {}

variable subnet_name {
  description = "Display name for the subnet in Console UI"
}

variable prohibit_public {}
variable dns_label {}

variable security_list_ids {}
variable dhcp_option {}
variable route_table_id {}
variable freeform_tags {}
