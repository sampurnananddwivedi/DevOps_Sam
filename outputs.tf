output "data_disk_ids" {
  value = module.data_disk.ids
}

output "data_disk_names" {
  value = module.data_disk.names
}
output "resource_group_names" {
  value = module.resource_group.names
}

output "resource_group_locations" {
  value = module.resource_group.locations
}

output "resource_group_ids" {
  value = module.resource_group.ids
}

output "virtual_network_ids" {
  value = module.virtual_network.ids
}

output "virtual_network_names" {
  value = module.virtual_network.names
}

output "subnet_ids" {
  value = module.subnet.ids
}

output "subnet_names" {
  value = module.subnet.names
}

output "network_interface_ids" {
  value = module.network_interface.ids
}

output "network_interface_names" {
  value = module.network_interface.names
}

output "vm_ids" {
  value = module.windows_vm.ids
}

output "vm_names" {
  value = module.windows_vm.names
}
