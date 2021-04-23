# output "dc_public_ip" {
#   value = azurerm_public_ip.main.ip_address
# }
# # ... and make sure it's shown to us in the console output of 'terraform apply'
# output "domain_controller_password" {
#   value = nonsensitive(random_password.domain_controller_password.result)
# }

output "workstations_public_ips" {
  value = zipmap(azurerm_virtual_machine.workstation.*.name, azurerm_public_ip.workstation.*.ip_address)
}

output "now_what" {
  value = <<EOF
###################
###  NOW WHAT?  ###
###################

RDP to your domain controller:
Domain Controller Public IP: ${azurerm_public_ip.main.ip_address}
Domain Admin: ${local.domain.dns_name}\${local.domain.initial_domain_admin.username}
Domain Password: ${local.domain.initial_domain_admin.password}

RDP to your workstation(s):
Workstation Public IP: ${azurerm_public_ip.workstation[0].ip_address}
Local Admin: ${local.domain.default_local_admin.username}
Local Admin Password: ${local.domain.default_local_admin.password}
EOF
}
