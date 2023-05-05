variable "load_balancer_routing_policy_condition_language_version" {
  default = "V1"
}
variable "lb_id" {}
variable "load_balancer_routing_policy_name" {}
variable "load_balancer_routing_policy_rules_actions_name" {
  default = "FORWARD_TO_BACKENDSET"
}
variable "bes_name" {}
variable "load_balancer_routing_policy_rules_condition" {}
variable "load_balancer_routing_policy_rules_name" {}