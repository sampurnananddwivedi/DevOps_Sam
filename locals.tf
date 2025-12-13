locals {
  # Map subnets to their address prefixes
  subnets = {
    for idx, name in var.subnet_names :
    name => {
      name            = name
      address_prefix  = var.subnet_address_prefixes[idx]
    }
  }

  # Map NICs to subnets and config
  nics = {
    for idx, name in var.nic_names :
    name => {
      name                   = name
      location               = var.resource_group_location
      resource_group_name    = var.resource_group_name
      ip_configuration_name  = var.nic_ip_configuration_names[idx]
      subnet_id              = local.subnets[var.subnet_names[idx]].name
      private_ip_address_allocation = var.nic_private_ip_address_allocations[idx]
    }
  }

  # Map VMs to NICs and config
  vms = {
    for k, v in var.vm_configs :
    k => {
      name                        = k
      resource_group_name         = var.resource_group_name
      location                    = var.resource_group_location
      size                        = v.size
      admin_username              = v.admin_username
      admin_password              = v.admin_password
      network_interface_id        = local.nics[v.nic_name].name
      os_disk_caching             = v.os_disk_caching
      os_disk_storage_account_type= v.os_disk_storage_account_type
      os_disk_name                = v.os_disk_name
      image_publisher             = v.image_publisher
      image_offer                 = v.image_offer
      image_sku                   = v.image_sku
      image_version               = v.image_version
    }
  }
}
