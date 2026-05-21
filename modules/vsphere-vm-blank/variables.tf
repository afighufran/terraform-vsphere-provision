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

variable "vsphere_iso_datastore" {
  type        = string
  description = "file .iso"
}

variable "proxmox_iso_path" {
  type = string
}

#Resource Specs
variable "vm_count" {
  type    = number
  default = 3
}

variable "vm_name_prefix" {
  type    = string
  default = "lab-tf"
}

variable "vm_cpu" {
  type = number
}

variable "vm_ram" {
  type = number
}

variable "vm_guest_id" {
  type    = string
  default = "otherLinux64Guest"
}

#Network Logics
variable "vm_ip_prefix" {
  type        = string
  description = "three octets for ip prefix e.g. 172.16.9"
}

variable "vm_ip_start" {
  type        = number
  description = "last octet for ip prefix"
}

variable "vm_netmask" {
  type = number
}

variable "vm_gateway" {
  type = string
}

variable "vm_disk_size" {
}
