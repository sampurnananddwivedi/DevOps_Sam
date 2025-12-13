variable "data_disks" {
  description = "Map of data disk objects. Each must have name, location, resource_group_name, storage_account_type, disk_size_gb, vm_id, lun, caching."
  type = map(object({
    name                 = string
    location             = string
    resource_group_name  = string
    storage_account_type = string
    disk_size_gb         = number
    vm_id                = string
    lun                  = number
    caching              = string
  }))
}
