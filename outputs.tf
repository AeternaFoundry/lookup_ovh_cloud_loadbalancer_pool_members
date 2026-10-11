output "cloud_loadbalancer_pool_members_lookup_loadbalancer_id" {
  description = "Map of loadbalancer_id values across all cloud_loadbalancer_pool_members_lookup, keyed the same as var.cloud_loadbalancer_pool_members_lookup except keys with no loadbalancer_id are omitted"
  value       = { for k, v in data.ovh_cloud_loadbalancer_pool_members.cloud_loadbalancer_pool_members_lookup : k => v.loadbalancer_id if v.loadbalancer_id != null && length(v.loadbalancer_id) > 0 }
}
output "cloud_loadbalancer_pool_members_lookup_members" {
  description = "Map of members values across all cloud_loadbalancer_pool_members_lookup, keyed the same as var.cloud_loadbalancer_pool_members_lookup except keys with no members are omitted"
  value       = { for k, v in data.ovh_cloud_loadbalancer_pool_members.cloud_loadbalancer_pool_members_lookup : k => v.members if v.members != null && length(v.members) > 0 }
}
output "cloud_loadbalancer_pool_members_lookup_pool_id" {
  description = "Map of pool_id values across all cloud_loadbalancer_pool_members_lookup, keyed the same as var.cloud_loadbalancer_pool_members_lookup except keys with no pool_id are omitted"
  value       = { for k, v in data.ovh_cloud_loadbalancer_pool_members.cloud_loadbalancer_pool_members_lookup : k => v.pool_id if v.pool_id != null && length(v.pool_id) > 0 }
}
output "cloud_loadbalancer_pool_members_lookup_service_name" {
  description = "Map of service_name values across all cloud_loadbalancer_pool_members_lookup, keyed the same as var.cloud_loadbalancer_pool_members_lookup except keys with no service_name are omitted"
  value       = { for k, v in data.ovh_cloud_loadbalancer_pool_members.cloud_loadbalancer_pool_members_lookup : k => v.service_name if v.service_name != null && length(v.service_name) > 0 }
}

