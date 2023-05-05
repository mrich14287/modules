output volume_id {
  value = data.oci_core_volumes.volume_info.volumes[0].id
}