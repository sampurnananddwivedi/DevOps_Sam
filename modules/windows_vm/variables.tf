variable "vms" {
  description = "Map of VM objects. Each object must have all required VM properties."
  type = map(object({
    name                         = string
    resource_group_name           = string
    location                     = string
    size                         = string
    admin_username               = string
    admin_password               = string
    network_interface_id         = string
    os_disk_caching              = string
    os_disk_storage_account_type = string
    os_disk_name                 = string
    image_publisher              = string
    image_offer                  = string
    image_sku                    = string
    image_version                = string
  }))
}
