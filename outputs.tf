output "resource_group_name" {
  value = module.resource_group.name
}

output "virtual_network_id" {
  value = module.virtual_network.id
}

output "subnet_ids" {
  value = { for k, s in module.subnet : k => s.id }
}

output "network_interface_ids" {
  value = { for k, n in module.network_interface : k => n.id }
}

output "vm_ids" {
  value = { for k, v in module.windows_vm : k => v.id }
}
