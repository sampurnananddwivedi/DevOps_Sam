resource "azurerm_managed_disk" "this" {
  for_each             = var.data_disks
  name                 = each.value.name
  location             = each.value.location
  resource_group_name  = each.value.resource_group_name
  storage_account_type = each.value.storage_account_type
  create_option        = "Empty"
  disk_size_gb         = each.value.disk_size_gb
}

resource "azurerm_virtual_machine_data_disk_attachment" "this" {
  for_each           = var.data_disks
  managed_disk_id    = azurerm_managed_disk.this[each.key].id
  virtual_machine_id = each.value.vm_id
  lun                = each.value.lun
  caching            = each.value.caching
}
