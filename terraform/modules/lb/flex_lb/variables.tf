variable compartment {}
variable display_name {}
variable shape {}
variable subnet_ids {}
variable freeform_tags {}
variable is_private {}
variable nsg_ids {}
variable max_bandwidth_in_mbps {
  description = "Bandwidth in Mbps that determines the maximum bandwidth (ingress plus egress) that the load balancer can achieve.The values must be between minimumBandwidthInMbps and 8192 (8Gbps)."
}
variable min_bandwidth_in_mbps {
  description = "Bandwidth in Mbps that determines the total pre-provisioned bandwidth (ingress plus egress). The values must be between 10 and the maximumBandwidthInMbps."
}
