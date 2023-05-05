resource "oci_apigateway_gateway" "mygateway" {
  #Required
  compartment_id = var.compartment_id
  endpoint_type = var.gateway_endpoint_type //PRIVATE or PUBLIC
  subnet_id = var.subnet_id

  display_name = var.gateway_name

  certificate_id = oci_apigateway_certificate.gw_cert.id
  freeform_tags = var.freeform_tags
}


resource "oci_apigateway_deployment" "site_deployment_fn" {

  compartment_id = var.compartment_id
  gateway_id = oci_apigateway_gateway.mygateway.id
  path_prefix = var.site_prefix
  display_name = var.deployment_name
  specification {

    routes {
      #Required
      backend {
        #Required
        type = "ORACLE_FUNCTIONS_BACKEND"

        #Optional
        //body = var.deployment_specification_routes_backend_body
        //connect_timeout_in_seconds = var.deployment_specification_routes_backend_connect_timeout_in_seconds
        function_id = var.function_id
      }
      path = "/{url*}"
      methods = var.methods
    }
  }
}



  resource "oci_apigateway_certificate" "gw_cert" {
  #Required
  certificate = var.public_cert
  compartment_id = var.compartment_id
  private_key = var.private_key
  display_name = var.cert_display_name

  #Optional
  //defined_tags = {"Operations.CostCenter"= "42"}
  freeform_tags = var.freeform_tags
  intermediate_certificates = var.intermediate_cert
}

