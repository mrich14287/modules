 module export_set_get {
  source  = "git@github.mheducation.com:MHE-OCI/shared_resources.git//terraform/modules/lookups/export_set"
  availability_domain = var.fss_ad
  mt_compartment = var.mt_compartment
}

resource oci_file_storage_file_system fss {
  availability_domain = "MYBl:US-ASHBURN-AD-${var.fss_ad}"
  compartment_id      = var.fss_compartment
  #defined_tags =
  display_name        = var.fss_display_name
}

resource oci_file_storage_export fss_export {
  export_set_id  = module.export_set_get.export_set_id
  file_system_id = oci_file_storage_file_system.fss.id
  path           = var.export_path
}
