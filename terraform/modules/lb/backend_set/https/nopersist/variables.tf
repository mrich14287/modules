variable lb_id {}
variable policy {}
variable display_name {}
variable lb_health_protocol {}
variable lb_health_port {
  default = 0 //this then uses ports assigned to backend
}
variable lb_health_url {}
variable lb_health_return_code {
  default = 200
}
variable lb_health_retries {
  default = 3
}
variable lb_health_interval {
  default = 3000
}
variable lb_health_timeout {
  default = 300
}
variable lb_health_regex {
  default = ""
}
variable cert_name{}
variable verify_peer {
  default = false
}


