output "gw_http_endpoint" {
  value = oci_apigateway_deployment.site_deployment_http.endpoint
}


output "gw_id" {
  value = oci_apigateway_gateway.mygateway.id
}


output "gw_ip" {
  value = oci_apigateway_gateway.mygateway.ip_addresses
}

