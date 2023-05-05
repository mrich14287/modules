variable "compartment_id" {
  description = "This if the OCID of the compartment that the tags will be applied to"
}

variable "tag_definition_id" {
  description = "This is the OCID of the tag that will be assigned a default"
}

variable "tag_default_value" {
  description = "This is the vaule for the tag (e.g. - Application = DMS, Platform = DMS, Environment = dev"
}

variable "tag_default_is_required" {
  description = "This determines if the tag is required to have a value"
  default     = false
}