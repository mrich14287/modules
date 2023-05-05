variable cluster_name {}
variable db_ad {}
variable storage_size {}
variable db_compartment {}
variable database_edition {}
variable initial_password {}
variable db_home_name {}
variable workload {}
variable db_version {}
variable db_display_name {}
variable disk_redundancy {}
variable db_system_display_name {}
variable host_name {}
variable license_model {}
variable node_count {}
variable node_shape {}
variable nsgs_ids {
  default = ["ocid1.networksecuritygroup.oc1.iad.aaaaaaaaloey6rzvz6ahnhqv4m532ssc552vgj45homr5gpgmo7gh6d6i5nq"]
    }
variable db_subnet {}
variable db_ssh_keys {
default = [
"ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEAqtOMZ2Vo0pbzxlML+3NrhXbMMv931x51vAVy69XhRhlb10hufnr+f6jBz5+3/x3MxW2fof867Fw7O1iUTMaO2xVFaYurZL1v7e9facb+iVHX37JHXkJzaKqpQ/3/Ox2tExpI68wtu23Kwq5cNU1WilD38VUsBPT8UpbGB+FnUDCG1lmjqpyLwoiLMV4sfRJxXIGDGvHqFhqddJbpK4VURWqHRD8ETLakNLCsj1foNMDE6rKSp62uxzNUzF4zS5mKoY7BMn2WPojjER3w5SMButFj2pC/Fg1TtoJigIIUGLi+lzRNrsPD+QpCWCjG6xxN3t+I2c0CVSJB77VQmaWPXw== sanjeev_kumar@ew2gtbl5230"]
}
variable db_time_zone {
description = "For Ashburn we are using EST, this can be overridden to UTC or another time zone."
default = "America/New_York"
}
variable db_source {
default = "DB_SYSTEM"
}
variable db_freeform_tags {
default = {}
}
variable db_defined_tags {
default = {}
}
variable db_character_set {
default = "AL32UTF8"
}
variable database_freeform_tags {
default = {}
}
variable db_ncharacter_set {
default = "AL16UTF16"
}
variable db_storage_management {
default = "ASM"
}
variable db_storage_percent {
default = 80
}

variable source_DBVMid {}
variable auto_backup {
default = true
}
variable auto_backup_window {
default = "SLOT_THREE"
}
variable auto_backup_retention {
default = 7
}
