variable "name" {
  description = "The name of the network interface."
  type        = string
}

variable "location" {
  description = "The Azure location."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "ip_configuration_name" {
  description = "The name of the IP configuration."
  type        = string
}

variable "subnet_id" {
  description = "The subnet ID."
  type        = string
}

variable "private_ip_address_allocation" {
  description = "The allocation method for the private IP address."
  type        = string
}
