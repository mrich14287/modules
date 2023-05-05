
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
variable nsgs_ids {}
variable tenancy_ocid {}
variable db_subnet {}
variable db_ssh_keys {
  default = [
    "ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEA6fkhFfs9Y657uPpE50nNUnFZ0y4UqpTuInETKNPtoi9H69/A7EO06m0EqaURHzLAXtRAtH55FGvRyHxZjseT5VNZGPNbZaJw00UwpqkkT0w4kOOs4e57dItwD5dufQ+v8F+sSq5Osy52lyLUlzAzPg68rnXHCGnncCxpMWGmXvcnBgrNQDxkHYd4MeaBM6wm8h3En81o3YwkbBKAA57Q/aSU9huL/S+bz3ZVqutPDf2JQLvLL51NZwG+LvbSB3DECevrLo95XLoo8zX9OVYuImvyMuWf9SaYwFPXSxlvrNFTjWAYgr4DSs76rtBEZ1aNzk2LLxtf8B+NPlwzG0tGeQ== aperiakaruppan@ew2gtbl5230",
    "ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEAyqPOXkMLEjKdIpNxJL7AdpnoCWMM2d8/CBfg/08HCMgukgkEV23fcPKONPNVLAWj2Z0KVvnuP7UyTdduNBpGlY5ze4KcsSOUSYmXI14mqNwqzT6lKpgplamkWITuhN+nVBx7onR1OOt3xMCVoHbe0KAyGOkfyDoejj0bZY4JC/crkSzr3XcccDxTlNZ0t/P93xZphYN97UQfEhKbUcTxhc/aMmS4bPwjPKEOOfzmHWZf/QvV2Bq8LZn97AssDjhG3vgcJnperPIulZFgkI8aZQ0Y+N7IJseYb5aHJ74iBFKsVuGVzgq8aqwvASpl8/nX75BPXPdykbNa+QPTIjnycw== aperiakaruppan@ew2gtbl5230",
    "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDASXCqyQzawavofCussN7D5fdl6rhQQwfgqkYIOL9boyCQsk14modwmLxF1QoIhsO8NyhF2BlRH007TKCjjgU2SbeUkQzhfdUMUXVQWmBNxoXy3Od15b23NedsL5NzUPrsLQi1CAzAvfIzAcLVDKAq7jveQWN/6AOBS2NTAHfcUhgqzcB4Mu0HDDrsNgYXYQbTufAeQWomt85Hh8ZzC0j1G0AF5v5bGWma7c7KLicoVzsn+8Vi1rfBv28y1gOIeMMMN2p2ry9kFjwfmd9kkB/ChKlGr04TjJqea4G5oJTwgqGKOb2sFssA2BVs4i4N/SlxdmZ0Ua+HAbmK8AAALb5tOeqsHMKgFPKT6xHfBg75gDQtXRJ/EVM50Ty3PjRL5FmRWhlebwmNF4++ZzQhcItHvSEkquh2hxoiGiBOjFoUYydiu3uiG+6lzx3tLBYa+srD6nLUVkUGwRJDcHXUrBvbdwz9vHOzzzBLqDCsn5Xjgalw7PEUnuXmBMFI3osOmiCK7NoPdKgG9Z18WgUFKq1MDbBI4daHpDn0DwZxfgMNiiEFUGX1CyD7RRxATbbITyX3xVuU6GMjZoE+nJ/Nm+TXZl+TtfHBpOwzJtt3mnxzETFmd9Crqc/saL8730KyO3BSFl5FbsLT+0tk9m2iHXFBAHfLX4PA07+8s7tqmgYTMQ== mark.richardson@mheducation.com"
  ]
}
variable db_time_zone {
  description = "For Ashburn we are using EST, this can be overridden to UTC or another time zone."
  default = "America/New_York"
}
variable db_source {
  default = "DATABASE"
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

variable recovery_dbid {}
variable restore_time {}
variable auto_backup {
  default = true
}
variable auto_backup_window {
  default = "SLOT_THREE"
}
variable auto_backup_retention {
  default = 7
}
variable tde_password {}