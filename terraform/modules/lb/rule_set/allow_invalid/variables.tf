variable "rule_set_items_action" {
  description = "Action type to take options include ADD_HTTP_REQUEST_HEADER, ADD_HTTP_RESPONSE_HEADER, ALLOW, CONTROL_ACCESS_USING_HTTP_METHODS, EXTEND_HTTP_REQUEST_HEADER_VALUE, EXTEND_HTTP_RESPONSE_HEADER_VALUE, HTTP_HEADER, REDIRECT, REMOVE_HTTP_REQUEST_HEADER, REMOVE_HTTP_RESPONSE_HEADER"
  default = "HTTP_HEADER"
}
variable "rule_set_items_allowed_methods" {
  description = "Required when action=CONTROL_ACCESS_USING_HTTP_METHODS"
  default =  ["GET", "PUT", "POST", "PROPFIND"]
}
variable "rule_set_items_are_invalid_characters_allowed" {
  description = "Required when action=HTTP_HEADER value is true for allow and false for no"
  default = true
}
variable "rule_set_name" {
  default = ""
}
variable "lb_id" {
  default = ""
}