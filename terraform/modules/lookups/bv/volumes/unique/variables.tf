# Network Variables
# VCN Variables

variable subnet_cidr_block {
  description = "CIDR block assigned to subnet"
  default     = <<CIDR_block>>
}


# Compute instances variables
variable instance_availability_domain {
  description = "The availability domain in Ashburn this is to be built in"
  default     = ["MYBl:US-ASHBURN-AD-1", "MYBl:US-ASHBURN-AD-2", "MYBl:US-ASHBURN-AD-3"]
}

# list of compartment ids to use
variable compartment_ocid {
  default = {
    nonprod    = "ocid1.compartment.oc1..aaaaaaaa755vddmknu3kpgcafpovdtynqe6tbszywgxhvg7crhgw7mmecctq"
    prod       = "ocid1.compartment.oc1..aaaaaaaawq674mv6mqnaidk2noemvbrbziyl6j2j45begcej44d5egsgdtla"
    admin      = "ocid1.compartment.oc1..aaaaaaaa6vyzxk7dhglid27kiaasp3uzkthlmrfrlih34atcimlkmqkovpza"
    mheconnect = "ocid1.compartment.oc1..aaaaaaaaqcoics5kgyloxrpt6yfgi4yrfrfbgqntpxf6prbf2zlsjowgb4pq"
    mhetransit = "ocid1.compartment.oc1..aaaaaaaaf7q6ntgcnl76z557xqxyz5xbattz67x5mxldgxxyyhe27vwavfba"
    security   = "ocid1.compartment.oc1..aaaaaaaad44vqifpsdkx3vnbtwwodwi77bkh76jg3righjkvaf3e3dktskta"
  }
}

variable common_nsgs {
  value = {
    nonprod-fss-ad1 = "ocid1.networksecuritygroup.oc1.iad.aaaaaaaa47vqqfdaz5oue7fcmdx7jeoarhdkly265rhjnovyv34vw4glwlqq",
    nonprod-fss-ad2 = "ocid1.networksecuritygroup.oc1.iad.aaaaaaaamsyv6yzax57477hle7xhtdapyov4vwvkcqcclfpty7ooculasvba",
    nonprod-fss-ad3 = "ocid1.networksecuritygroup.oc1.iad.aaaaaaaafljfo4nsicfkjj6tfdcs7uc7wwyzstgar2sqjtsujhk55slye3aa",
    prod-fss-ad1  = "",
    prod-fss-ad2 = "",
    prod-fss-ad3 = "",
  }
}