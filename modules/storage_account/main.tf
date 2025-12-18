resource "azurerm_storage_account" "this" {
  for_each = var.storage_accounts

  name                     = each.key
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = each.value.account_tier
  account_replication_type = each.value.account_replication_type
  account_kind             = each.value.account_kind
  access_tier              = each.value.access_tier

  enable_https_traffic_only = each.value.enable_https_traffic_only
  min_tls_version           = each.value.min_tls_version
  public_network_access_enabled = each.value.public_network_access
  allow_blob_public_access  = each.value.allow_blob_public_access

  tags = merge(var.tags, each.value.tags)
}
