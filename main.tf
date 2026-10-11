data "ovh_cloud_loadbalancer_pool_members" "cloud_loadbalancer_pool_members_lookup" {
  for_each = var.cloud_loadbalancer_pool_members_lookup

  loadbalancer_id = each.value.loadbalancer_id
  pool_id         = each.value.pool_id
  service_name    = each.value.service_name
}

