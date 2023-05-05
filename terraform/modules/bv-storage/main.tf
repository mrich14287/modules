resource oci_core_volume block_storage {
  count               = var.restore_volume ? 0 : 1
  #Required
  availability_domain = "MYBl:US-ASHBURN-AD-${var.bv_ad}"
  compartment_id      = var.compartment

  #Optional
  #backup_policy_id = ${oci_core_backup_policy.test_backup_policy.id
  #defined_tags = {Operations.CostCenter= 42}
  display_name = "${var.server_name}-${var.use}"
  #freeform_tags = {Department= Finance}
  #kms_key_id = ${oci_core_kms_key.test_kms_key.id
  size_in_gbs = var.bvsize
  # source_details {
  #   #Required
  #   id = var.volume_source_details_id
  #   type = var.volume_source_details_type
  # }
}

resource oci_core_volume block_storage_restore {
  count               = var.restore_volume ? 1 : 0
  #Required
  availability_domain = "MYBl:US-ASHBURN-AD-${var.bv_ad}"
  compartment_id      = var.compartment
  //backup_policy_id = var.backup_policy
  //defined_tags = {Operations.CostCenter= 42}
  display_name = "${var.server_name}-${var.use}"
  //freeform_tags = var.freeform_tags
  size_in_gbs = var.bvsize
  source_details {
    id = var.volume_source_details_id
    type = var.volume_source_details_type
  }
}

resource oci_core_volume_attachment block_storage_attach {
  count           = var.restore_volume ? 0 : 1
  attachment_type = "paravirtualized"
  instance_id     = var.compute_instance
  volume_id       = oci_core_volume.block_storage[0].id
}

resource oci_core_volume_attachment block_volume_attach {
  count           = var.restore_volume ? 1 : 0
  attachment_type = "paravirtualized"
  instance_id     = var.compute_instance
  volume_id       = oci_core_volume.block_storage_restore[0].id
}
