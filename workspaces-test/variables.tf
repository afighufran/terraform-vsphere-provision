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
variable "vm_specs" {
  type = map(object({
    vm_name      = string
    vm_count     = number
    vm_cpu       = number
    vm_ram       = number
    vm_ip_prefix = string
    vm_ip_start  = number
    vm_netmask   = number
    vm_gateway   = string
  }))
}