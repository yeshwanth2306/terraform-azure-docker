variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
  type        = string
  default     = "rg-docker-practice"
}

variable "location" {
  description = "Azure region for the resources"
  type        = string
  default     = "Central India"
}

variable "vm_name" {
  description = "Name of the Linux virtual machine"
  type        = string
  default     = "docker-vm"
}

variable "admin_username" {
  description = "Administrator username for the VM"
  type        = string
  default     = "azureuser"
}
