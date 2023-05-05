##################################
# Oracle non-RAC database derived from dba team sample
##################################
resource oci_database_db_system oracle_db_system {
  availability_domain    = "MYBl:US-ASHBURN-AD-${var.db_ad}"
  backup_network_nsg_ids = []
  cluster_name            = var.cluster_name
  compartment_id          = var.db_compartment
  data_storage_percentage = var.db_storage_percent
  data_storage_size_in_gb = var.storage_size
  database_edition        = var.database_edition

  db_home {
    database {
      admin_password = var.initial_password
      backup_tde_password = var.tde_password
 //     character_set  = var.db_character_set
      db_name        = var.db_home_name
      db_workload    = var.workload
      freeform_tags  = var.database_freeform_tags
 //     ncharacter_set = var.db_ncharacter_set
      database_id    = var.recovery_dbid//"ocid1.database.oc1.iad.abuwcljt5egkjfzvjhtsicqmpg43psfankijrhm7fgznk4d3iucqezhlymnq"
      time_stamp_for_point_in_time_recovery = var.restore_time //"2021-01-07T13:00:00Z"
      db_backup_config {
        auto_backup_enabled     = var.auto_backup
        auto_backup_window      = var.auto_backup_window
        recovery_window_in_days = var.auto_backup_retention
      }

    }
//    db_version   = var.db_version
    display_name = var.db_display_name
  }
  db_system_options {
    storage_management = var.db_storage_management
  }
  defined_tags    = var.db_defined_tags
  disk_redundancy = var.disk_redundancy
  display_name    = var.db_system_display_name
  freeform_tags   = var.db_freeform_tags
  hostname        = var.host_name
  license_model   = var.license_model
  node_count      = var.node_count
  nsg_ids         = var.nsgs_ids
  shape           = var.node_shape
  source          = var.db_source
  ssh_public_keys = var.db_ssh_keys
  subnet_id       = var.db_subnet
  time_zone       = var.db_time_zone
}