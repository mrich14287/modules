resource oci_load_balancer_certificate installed_certificate {
  #Required
  certificate_name = var.cert_name
  load_balancer_id = var.lb_id

  #Optional
  ca_certificate = var.ca_cert
  passphrase = var.cert_pass
  private_key = var.cert_private
  public_certificate = var.cert_public

  lifecycle {
    create_before_destroy = false
  }

}