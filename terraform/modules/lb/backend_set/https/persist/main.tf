resource oci_load_balancer_backend_set backend_set {
  load_balancer_id = var.lb_id
  name             = var.display_name
  policy           = var.policy
  health_checker {
    protocol            = var.lb_health_protocol
    port                = var.lb_health_port
    url_path            = var.lb_health_url
    return_code         = var.lb_health_return_code
    retries             = var.lb_health_retries
    interval_ms         = var.lb_health_interval
    timeout_in_millis   = var.lb_health_timeout
    response_body_regex = var.lb_health_regex
  }
  ssl_configuration {
    #Required
    certificate_name = var.cert_name
    #Optional
    # verify_depth = "${var.backend_set_ssl_configuration_verify_depth}"
    verify_peer_certificate = var.verify_peer
  }
  lb_cookie_session_persistence_configuration {
    #currently using only defaults
  }
}