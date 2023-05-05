// Create the WAF Policies resource
resource "oci_waf_web_app_firewall_policy" "waf" {
  compartment_id = var.waf_compartment_id
  display_name = var.waf_display_name

  actions {
    name = "Pre-configured Check Action"
    type = "CHECK"
    code = 0
  }
  actions {
    name = "Pre-configured Allow Action"
    type = "ALLOW"
    code = 0
  }
  actions {
    name = "Pre-configured 401 Response Code Action"
    type = "RETURN_HTTP_RESPONSE"
    code = 401
    body {
      text = jsonencode(
        {
          code    = "401"
          message = "Unauthorized"
        }
      )
      type = "STATIC_TEXT"
    }
    headers {
      name = "Content-Type"
      value = "application/json"
    }
  }

  request_access_control {
    default_action_name = "Pre-configured Allow Action"

    rules {
      action_name = "Pre-configured Check Action"
      condition = "i_contains(keys(http.request.headers), ${var.protected_urls})"
      condition_language = "JMESPATH"
      name        = "accessRule01"
      type        = "ACCESS_CONTROL"
    }
  }
  request_protection {
    rules {
      action_name                = "Pre-configured Check Action"
      name                       = "protectionRule01"
      type                       = "PROTECTION"
      protection_capabilities {
        key                            = "9420000"
        version                        = 2
      }
      protection_capabilities {
        collaborative_action_threshold = 1
        key                            = "941140"
        version                        = 2
      }
      protection_capabilities {
        collaborative_action_threshold = 1
        key                            = "9410000"
        version                        = 3
      }
      protection_capabilities {
        collaborative_action_threshold = 1
        key                            = "9330000"
        version                        = 2
      }
      protection_capabilities {
        collaborative_action_threshold = 1
        key                            = "9320001"
        version                        = 2
      }
      protection_capabilities {
        collaborative_action_threshold = 1
        key                            = "9320000"
        version                        = 2
      }
      protection_capabilities {
        collaborative_action_threshold = 1
        key                            = "930120"
        version                        = 2
      }
      protection_capabilities {
        collaborative_action_threshold = 1
        key                            = "9300000"
        version                        = 2
      }
      protection_capabilities {
        collaborative_action_threshold = 1
        key                            = "920390"
        version                        = 1
      }
      protection_capabilities {
        collaborative_action_threshold = 1
        key                            = "920380"
        version                        = 1
      }
      protection_capabilities {
        collaborative_action_threshold = 1
        key                            = "920370"
        version                        = 1
      }
      protection_capabilities {
        collaborative_action_threshold = 1
        key                            = "920320"
        version                        = 1
      }
      protection_capabilities {
        collaborative_action_threshold = 1
        key                            = "920300"
        version                        = 1
      }
      protection_capabilities {
        collaborative_action_threshold = 1
        key                            = "911100"
        version                        = 1
      }
    }
  }
  timeouts {}
}

// Create WAF Firewall and attach to desired load balancer
resource "oci_waf_web_app_firewall" "waf_firewall" {
  backend_type               = var.waf_firewall_backend_type
  compartment_id             = var.waf_compartment_id
  load_balancer_id           = var.load_balancer_id
  web_app_firewall_policy_id = oci_waf_web_app_firewall_policy.waf.id
  display_name               = var.waf_firewall_display_name
}