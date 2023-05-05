
resource "oci_load_balancer_load_balancer_routing_policy" "test_load_balancer_routing_policy" {
  #Required
  condition_language_version = var.load_balancer_routing_policy_condition_language_version
  load_balancer_id = var.lb_id
  name = var.load_balancer_routing_policy_name
  rules {
    #Required
    actions {
      #Required
      name = var.load_balancer_routing_policy_rules_actions_name

      #Optional
      backend_set_name = var.bes_name
    }
    condition = var.load_balancer_routing_policy_rules_condition
    name = var.load_balancer_routing_policy_rules_name
  }
}