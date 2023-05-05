
output "gw_fn_endpoint" {
  value = oci_apigateway_deployment.site_deployment_fn.endpoint
}

output "gw_id" {
  value = oci_apigateway_gateway.mygateway.id
}


output "gw_ip" {
  value = oci_apigateway_gateway.mygateway.ip_addresses[0]
}

