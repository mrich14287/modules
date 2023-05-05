resource oci_core_instance compute_instance {
  availability_domain = "MYBl:US-ASHBURN-AD-${var.base_ad}"
  compartment_id      = var.compartment
  metadata = {
    ssh_authorized_keys = var.ssh_keys
    user_data           = var.user_data
  }
  shape = var.server_shape
  shape_config {
    ocpus = var.ocpus
    memory_in_gbs = var.migs
  }
  fault_domain = var.fault_domain

  agent_config {
    is_monitoring_disabled = false
  }
  create_vnic_details {
    subnet_id = var.subnet_id
    assign_public_ip = false
    display_name     = var.server_name
    private_ip       = var.ip_address
    nsg_ids          = var.nsgs_ids
  }
  display_name = var.server_name
  source_details {
    source_id   = var.source_id
    source_type = var.source_type
  }
  preserve_boot_volume = var.saveboot
  freeform_tags        = var.freeform_tags
}


