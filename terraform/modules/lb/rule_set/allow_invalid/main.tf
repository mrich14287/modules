resource "oci_load_balancer_rule_set" "rule_set" {
  #Required
  items {
    #Required
    action = var.rule_set_items_action
    allowed_methods                = var.rule_set_items_allowed_methods
    are_invalid_characters_allowed = var.rule_set_items_are_invalid_characters_allowed
   }
  load_balancer_id = var.lb_id
  name             = var.rule_set_name
}