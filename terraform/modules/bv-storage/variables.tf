
# Compute instances variables
variable "instance_availability_domain" {
  description = "The availability domain in Ashburn this is to be built in"
  default     = ["MYBl:US-ASHBURN-AD-1", "MYBl:US-ASHBURN-AD-2", "MYBl:US-ASHBURN-AD-3"]
}

variable server_name {}

variable compute_instance {}

variable private_ip {}

variable bv_ad {}

variable bvsize {}

variable use {}

variable compartment {}

variable restore_volume {}

variable volume_source_details_id {}

variable volume_source_details_type {}




