provider "azurerm" {
  features {}
}

module "resource_group" {
  source   = "./modules/resource_group"
  name     = var.resource_group_name
  location = var.resource_group_location
}

module "virtual_network" {
  source              = "./modules/virtual_network"
  name                = var.virtual_network_name
  address_space       = var.virtual_network_address_space
  location            = var.virtual_network_location
  resource_group_name = var.resource_group_name
}

module "subnet" {
  for_each            = local.subnets
  source              = "./modules/subnet"
  name                = each.value.name
  resource_group_name = var.resource_group_name
  virtual_network_name= var.virtual_network_name
  address_prefixes    = each.value.address_prefix
}

module "network_interface" {
  for_each                        = local.nics
  source                         = "./modules/network_interface"
  name                           = each.value.name
  location                       = each.value.location
  resource_group_name             = each.value.resource_group_name
  ip_configuration_name           = each.value.ip_configuration_name
  subnet_id                      = module.subnet[each.value.subnet_id].id
  private_ip_address_allocation   = each.value.private_ip_address_allocation
}

module "windows_vm" {
  for_each                = local.vms
  source                  = "./modules/windows_vm"
  name                    = each.value.name
  resource_group_name     = each.value.resource_group_name
  location                = each.value.location
  size                    = each.value.size
  admin_username          = each.value.admin_username
  admin_password          = each.value.admin_password
  network_interface_id    = module.network_interface[each.value.network_interface_id].id
  os_disk_caching         = each.value.os_disk_caching
  os_disk_storage_account_type = each.value.os_disk_storage_account_type
  os_disk_name            = each.value.os_disk_name
  image_publisher         = each.value.image_publisher
  image_offer             = each.value.image_offer
  image_sku               = each.value.image_sku
  image_version           = each.value.image_version
}
