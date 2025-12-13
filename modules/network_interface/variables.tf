variable "nics" {
  description = "Map of NIC objects. Each object must have 'name', 'location', 'resource_group_name', 'ip_configuration_name', 'subnet_id', and 'private_ip_address_allocation'."
  type = map(object({
    name                         = string
    location                     = string
    resource_group_name           = string
    ip_configuration_name         = string
    subnet_id                    = string
    private_ip_address_allocation = string
  }))
}
