variable "data_safe_status" {
  default = "NOT_REGISTERED"
}

variable "size_in_tbs" {
  default ="1"
 }
variable db_pass {}
variable "customer_contacts_email" {}
variable compartment_id{}
variable "cpu_core_count" {
  default ="1"
  }
variable DB_workload{
  description ="OLTP-Transaction Processing database ,DW -Data Warehouse database,AJD-JSON Database,APEX-Oracle APEX"
  default = "OLTP"
}
variable "db_version" {
  default ="19c"
  }
variable db_name {}
variable db_license {
  default = "BRING_YOUR_OWN_LICENSE"
}
variable subnet_id {}
variable nsg_ids {}
variable "auto_scaling_enabled" {
  default = "false"
}
variable "data_guard_enabled" {
  default = "false"
}
variable "is_dedicated" {
  default = "false"
}
variable "is_free_tier" {
  default = "false"
}
variable "dbsysfreetag" {}
variable "switchover_to" {
  default = "PRIMARY"
  }
variable "operations_insights_status" {
  default = "NOT_ENABLED"
  }
