variable "rule_set_items_action" {
  description = "Action type to take options include ADD_HTTP_REQUEST_HEADER, ADD_HTTP_RESPONSE_HEADER, ALLOW, CONTROL_ACCESS_USING_HTTP_METHODS, EXTEND_HTTP_REQUEST_HEADER_VALUE, EXTEND_HTTP_RESPONSE_HEADER_VALUE, HTTP_HEADER, REDIRECT, REMOVE_HTTP_REQUEST_HEADER, REMOVE_HTTP_RESPONSE_HEADER"
  default = "ADD_HTTP_REQUEST_HEADER"
}
variable "rule_set_header" {}
variable "rule_set_name" {}
variable "lb_id" {}