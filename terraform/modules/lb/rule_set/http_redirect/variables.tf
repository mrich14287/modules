variable "rule_set_items_action" {
  description = "Action type to take options include ADD_HTTP_REQUEST_HEADER, ADD_HTTP_RESPONSE_HEADER, ALLOW, CONTROL_ACCESS_USING_HTTP_METHODS, EXTEND_HTTP_REQUEST_HEADER_VALUE, EXTEND_HTTP_RESPONSE_HEADER_VALUE, HTTP_HEADER, REDIRECT, REMOVE_HTTP_REQUEST_HEADER, REMOVE_HTTP_RESPONSE_HEADER"
  default = "REDIRECT"
}
variable "rule_set_items_conditions_attribute_name" {
  description = "Required when action=ALLOW or REDIRECT Values = PATH, SOURCE_IP_ADDRESS, SOURCE_VCN_ID, SOURCE_VCN_IP_ADDRESS"
  default = "PATH"
}
variable "rule_set_items_conditions_attribute_value" {
  default = "/"
}
variable "rule_set_items_conditions_operator" {
  default = "FORCE_LONGEST_PREFIX_MATCH"
}
variable "rule_set_items_redirect_uri_host" {
  default = "{host}"
}
variable "rule_set_items_redirect_uri_path" {
  default = "/{path}"
}
variable "rule_set_items_redirect_uri_port" {
  default = "443"
}
variable "rule_set_items_redirect_uri_protocol" {
  default = "https"
}
variable "rule_set_items_redirect_uri_query" {
  default = "?{query}"
}
variable "rule_set_items_response_code" {
  default = "301"
}
variable "rule_set_name" {
  default = ""
}
variable "lb_id" {
  default = ""
}