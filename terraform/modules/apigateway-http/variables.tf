
variable "compartment_id" {
  description = "The Compartment ID under which the gateway should be created"

}
variable "gateway_name" {
  description = "This is the display name for the Gateway to be created "
}

variable "subnet_id" {
  description = "The Subnet ID  where the Gateways needs to be created"
}

variable "gateway_endpoint_type" {
  default = "PRIVATE"
  description = "The Visibility of the Gateway - public or private"
}

variable "cert_display_name"{
  description = "The private key of the certificate which will be used for the gateway"
  //default = "${var.gateway_name}-certificate"
}


variable "private_key"{
  description = "The private key of the certificate which will be used for the gateway"
}

variable "public_cert"{
  description = "The public certificate which will be used for the gateway"
}

variable "intermediate_cert"{
  description = "The Intermediate certificate which will be used for the gateway"
}

variable "site_prefix" {
  default = "/"
  description = "This is the site prefix after the base URL "
}



variable "backend_url" {
  description = "The backend URL of the HTTP backend "
  default = ""
}


variable "deployment_name" {
  description = "The function ID of the Function"
}

variable "freeform_tags" {
  description = "Free form Tags"
  default = {}
}

variable "methods"{
  default = ["GET", "POST"]
  description = "API Call Methods"
}

variable nsg_ids{

}



variable routes{
  description = "All SOA Routes "
  type = list(object({
    backend_url = string
    path = string
    //methods = (string)
  }))
}