#vSphere Components
variable "vsphere_user" {
  type = string
}

variable "vsphere_password" {
  type      = string
  sensitive = true
}

variable "vsphere_server" {
  type = string
}

variable "vsphere_datacenter" {
  type = string
}

variable "vsphere_datastore" {
  type = string
}

variable "vsphere_cluster" {
  type = string
}

variable "vsphere_network" {
  type = string
}

variable "vsphere_template" {
  type = string
}

#Resource Specs
variable "vm_count" {
  type = number
}

variable "vm_name_prefix" {
  type = string
}

variable "vm_cpu" {
  type = number
}

variable "vm_ram" {
  type = number
}

#Network Logics
variable "vm_ip_prefix" {
  type        = string
  description = "three octets for ip prefix e.g. 192.168.100"
}

variable "vm_ip_start" {
  type        = number
  description = "last octet for ip prefix e.g. 1"
}

variable "vm_netmask" {
  type = number
}

variable "vm_gateway" {
  type = string
}
