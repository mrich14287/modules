
# Per best practice of Terraform, this is a list of OCI IDs for VM images to use.  Will need to be updated periodically if new images available.
variable source_id {}

variable server_shape {
  description = "Compute definition to build to e.g. - VM.Standard2.1"
}

variable server_name {
  description = "Display name of server in the console"
}

variable ip_address {
  description = "Optional variable used if assigned IP address is required"
}

variable subnet_id {
  description = "Subnet that the instance will be placed in"
}

variable base_ad {
  description = "Availability Domain Index number between 0 and 2"
}

variable compartment {
  description = "Compartment in which the resource will be saved"
}

variable saveboot {
  description = "This is a boolean variable to indicate if it is desired to save the boot drive on instance termination"
}

variable nsgs_ids {}

variable ssh_keys {}

variable fault_domain {}

variable ocpus {}

variable migs {}

variable user_data {}

variable freeform_tags {}
