//placeholder for waf variables
variable waf_compartment_id {
  description = "This is the compartment id where the WAF will be created"
}
variable waf_display_name {
  description = "This is the WAF's name as displayed in the Console"
}
variable protected_urls {
  description = "This is a list in brackets [] of the URLs that the WAF will protect"
}
variable waf_firewall_backend_type {
  description = "Type of WebAppFirewall"
  default     = "LOAD_BALANCER"
}
variable "load_balancer_id" {
  description = "ID of the load balancer to be protected by the WAF"
}
variable "waf_firewall_display_name" {
  description = "This is the display name of the firewall shown in the Console"
}