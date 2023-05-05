data oci_file_storage_mount_targets mount_target {
  availability_domain = "MYBl:US-ASHBURN-AD-${var.fss_ad}"
  compartment_id      = var.mt_compartment
}

/*variable "instance_availability_domain" {
  description = "The availability domain in Ashburn this is to be built in"
  default     = ["MYBl:US-ASHBURN-AD-1", "MYBl:US-ASHBURN-AD-2", "MYBl:US-ASHBURN-AD-3"]
}*/

variable fss_ad {}

variable fss_compartment {}

variable fss_display_name {}

variable export_path {}

variable mt_compartment {}

