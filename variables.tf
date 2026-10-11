variable "cloud_loadbalancer_pool_members_lookup" {
  description = <<EOT
Map of cloud_loadbalancer_pool_members_lookup, attributes below
Required:
    - loadbalancer_id
    - pool_id
    - service_name
EOT

  type = map(object({
    loadbalancer_id = string
    pool_id         = string
    service_name    = string
  }))
}

