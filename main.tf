terraform {
  required_version = ">= 1.3.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.0.0"
    }
  }
}

provider "azurerm" {
  features {}
}

# Resource Group
module "resource_group" {
  source = "./modules/resource_group"
  resource_groups = local.resource_groups
}

# Virtual Network
module "virtual_network" {
  source = "./modules/virtual_network"
  virtual_networks = local.virtual_networks
}

# Subnets (one per VM)
module "subnet" {
  source  = "./modules/subnet"
  subnets = local.subnets
}

# Network Interfaces (one per VM/subnet)
module "network_interface" {
  source = "./modules/network_interface"
  nics   = local.nics
}

# Windows VMs (one per subnet, each with its own NIC)
module "windows_vm" {
  source = "./modules/windows_vm"
  vms    = local.vms
}

# Data Disks (two per VM)
module "data_disk" {
  source     = "./modules/data_disk"
  data_disks = local.data_disks
}
