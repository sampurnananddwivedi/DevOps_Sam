variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "resource_group_location" {
  description = "The Azure location for the resource group."
  type        = string
}

variable "virtual_network_name" {
  description = "The name of the virtual network."
  type        = string
}

variable "virtual_network_address_space" {
  description = "The address space for the virtual network."
  type        = list(string)
}

variable "virtual_network_location" {
  description = "The Azure location for the virtual network."
  type        = string
}

# Subnet variables
variable "subnet1_name" {
}
variable "subnet1_address_prefix" {
}
variable "subnet2_name" {
}
variable "subnet2_address_prefix" {
}
variable "subnet3_name" {
}
variable "subnet3_address_prefix" {
}

# NIC variables
variable "nic1_name" {
}
variable "nic1_ip_configuration_name" {
}
variable "nic1_private_ip_address_allocation" {
}
variable "nic2_name" {
}
variable "nic2_ip_configuration_name" {
}
variable "nic2_private_ip_address_allocation" {
}
variable "nic3_name" {
}
variable "nic3_ip_configuration_name" {
}
variable "nic3_private_ip_address_allocation" {
}

# VM variables
variable "vm1_name" {
}
variable "vm1_size" {
}
variable "vm1_admin_username" {
}
variable "vm1_admin_password" {
}
variable "vm1_os_disk_caching" {
}
variable "vm1_os_disk_storage_account_type" {
}
variable "vm1_os_disk_name" {
}
variable "vm1_image_publisher" {
}
variable "vm1_image_offer" {
}
variable "vm1_image_sku" {
}
variable "vm1_image_version" {
}

variable "vm2_name" {
}
variable "vm2_size" {
}
variable "vm2_admin_username" {
}
variable "vm2_admin_password" {
}
variable "vm2_os_disk_caching" {
}
variable "vm2_os_disk_storage_account_type" {
}
variable "vm2_os_disk_name" {
}
variable "vm2_image_publisher" {
}
variable "vm2_image_offer" {
}
variable "vm2_image_sku" {
}
variable "vm2_image_version" {
}

variable "vm3_name" {
}
variable "vm3_size" {
}
variable "vm3_admin_username" {
}
variable "vm3_admin_password" {
}
variable "vm3_os_disk_caching" {
}
variable "vm3_os_disk_storage_account_type" {
}
variable "vm3_os_disk_name" {
}
variable "vm3_image_publisher" {
}
variable "vm3_image_offer" {
}
variable "vm3_image_sku" {
}
variable "vm3_image_version" {
}

variable "subnet_names" {
  description = "The names of the subnets."
  type        = list(string)
}

variable "subnet_address_prefixes" {
  description = "The address prefixes for each subnet."
  type        = list(list(string))
}

variable "nic_names" {
  description = "The names of the network interfaces."
  type        = list(string)
}

variable "nic_ip_configuration_names" {
  description = "The names of the IP configurations."
  type        = list(string)
}

variable "nic_private_ip_address_allocations" {
  description = "The allocation methods for the private IP addresses."
  type        = list(string)
}

variable "vm_configs" {
  description = "A map of VM configs keyed by VM name."
  type = map(object({
    size                        = string
    admin_username              = string
    admin_password              = string
    os_disk_caching             = string
    os_disk_storage_account_type= string
    os_disk_name                = string
    image_publisher             = string
    image_offer                 = string
    image_sku                   = string
    image_version               = string
    nic_name                    = string
  }))
}
