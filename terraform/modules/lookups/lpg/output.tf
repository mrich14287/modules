output lpg_id {
 value = data.oci_core_local_peering_gateways.lpg_lookup.local_peering_gateways[0].id
}
output lpg_name {
 value = data.oci_core_local_peering_gateways.lpg_lookup.local_peering_gateways[0].display_name
}
