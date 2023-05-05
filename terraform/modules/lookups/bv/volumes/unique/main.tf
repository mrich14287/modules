######################
# lookup reference information
######################
data oci_core_vcns target_vcn {
  compartment_id = var.compartment_ocid[<<compartment_label]  //VCNs are in mhetransit, prod, and nonprod
}

data oci_identity_availability_domains ashburn_ads {
  compartment_id = var.compartment_ocid[<<compartment_label>>]
}

######################
# Subnets - This creates the subnet for the instances
######################
resource oci_core_subnet <<subnet_label>> {
  cidr_block                 = var.subnet_cidr_block
  display_name               = "<<subnet_name>>"
  compartment_id             = var.compartment_ocid["<<compartment_label>>"]
  vcn_id                     = data.oci_core_vcns.target_vcn.virtual_networks[0].id
  prohibit_public_ip_on_vnic = true

}

module <<instance#_label>> {
  source       = "../modules/compute"
  server_name  = "machinename"
  ip_address   = 
  server_os    = "mhelinux" //(values == windows16, windows19, mhelinux)
  server_shape = "VM.Standard2.1" //see values at oci website
  subnet_id    = oci_core_subnet.Admin_Subnet.id  //this should be the subnet being created in network
  ad_idx       = 0  // this is the index number of one of three ADs that the instance will be created, storage much be in same one
  compartment  = "admin" //Name of compartment where resource will reside (values == admin, security, prod, nonprod, dms)
  saveboot = <<boolean>>
}

module <<instance#_label>>-bvg {
  source           = "../modules/bv-storage"
  server_name      = "machinename"
  compute_instance = module.instance#_label.compute_instance
  private_ip       = module.instance#_label.private_ip
  ad_idx           = 0
  bvsize           = 50
  use              = "bvg"
}




