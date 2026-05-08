output "vm_ips" {
  value = vsphere_virtual_machine.vm_belajar[*].default_ip_address
}
