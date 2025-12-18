variable "resource_group_name" {
  description = "Resource group name"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "storage_accounts" {
  description = "Map of storage accounts to create"
  type = map(object({
    account_tier             = string
    account_replication_type = string
    account_kind             = optional(string, "StorageV2")
    access_tier              = optional(string, "Hot")
    enable_https_traffic_only = optional(bool, true)
    min_tls_version           = optional(string, "TLS1_2")
    public_network_access     = optional(bool, true)
    allow_blob_public_access  = optional(bool, false)
    tags                      = optional(map(string), {})
  }))
}

variable "tags" {
  description = "Common tags"
  type        = map(string)
  default     = {}
}
