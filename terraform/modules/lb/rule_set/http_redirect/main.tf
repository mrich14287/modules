resource "oci_load_balancer_rule_set" "lb_rule_set" {
  load_balancer_id       = var.lb_id
  name                   = var.rule_set_name
  items {
    action               = var.rule_set_items_action
    conditions {
      attribute_name     = var.rule_set_items_conditions_attribute_name
      attribute_value    = var.rule_set_items_conditions_attribute_value
      operator           = var.rule_set_items_conditions_operator
    }
    redirect_uri {
      host               = var.rule_set_items_redirect_uri_host
      protocol           = var.rule_set_items_redirect_uri_protocol
      port               = var.rule_set_items_redirect_uri_port
      path               = var.rule_set_items_redirect_uri_path
      query              = var.rule_set_items_redirect_uri_query
    }
    response_code        = var.rule_set_items_response_code
  }
}