resource "oci_load_balancer_rule_set" "rule_set" {
  #Required
  dynamic "items" {
    for_each = var.rule_set_header
    content {
      #Required
      action = var.rule_set_items_action
      header = items.key
      value  = items.value
    }
  }
  load_balancer_id = var.lb_id
  name             = var.rule_set_name
}