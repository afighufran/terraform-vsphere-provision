output "vm_inventory_list" {
  value       = module.ubuntu_24_server.vm_ips
  description = "Daftar IP yang sudah diprovision"
}

# output "vm_inventory_list2" {
#   value       = module.db_server.vm_ips
#   description = "Daftar IP yang sudah diprovision"
# }

# output "vm_inventory_list3" {
#   value       = module.app_server.vm_ips
#   description = "Daftar IP yang sudah diprovision"
# }