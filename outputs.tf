output "storage_account_sas_lookup_id" {
  description = "Map of id values across all storage_account_sas_lookup, keyed the same as var.storage_account_sas_lookup"
  value       = { for k, v in data.azurerm_storage_account_sas.storage_account_sas_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "storage_account_sas_lookup_connection_string" {
  description = "Map of connection_string values across all storage_account_sas_lookup, keyed the same as var.storage_account_sas_lookup"
  value       = { for k, v in data.azurerm_storage_account_sas.storage_account_sas_lookup : k => v.connection_string if v.connection_string != null && length(v.connection_string) > 0 }
  sensitive   = true
}
output "storage_account_sas_lookup_expiry" {
  description = "Map of expiry values across all storage_account_sas_lookup, keyed the same as var.storage_account_sas_lookup"
  value       = { for k, v in data.azurerm_storage_account_sas.storage_account_sas_lookup : k => v.expiry if v.expiry != null && length(v.expiry) > 0 }
}
output "storage_account_sas_lookup_https_only" {
  description = "Map of https_only values across all storage_account_sas_lookup, keyed the same as var.storage_account_sas_lookup"
  value       = { for k, v in data.azurerm_storage_account_sas.storage_account_sas_lookup : k => v.https_only if v.https_only != null }
}
output "storage_account_sas_lookup_ip_addresses" {
  description = "Map of ip_addresses values across all storage_account_sas_lookup, keyed the same as var.storage_account_sas_lookup"
  value       = { for k, v in data.azurerm_storage_account_sas.storage_account_sas_lookup : k => v.ip_addresses if v.ip_addresses != null && length(v.ip_addresses) > 0 }
}
output "storage_account_sas_lookup_permissions" {
  description = "Map of permissions values across all storage_account_sas_lookup, keyed the same as var.storage_account_sas_lookup"
  value       = { for k, v in data.azurerm_storage_account_sas.storage_account_sas_lookup : k => one(v.permissions) if v.permissions != null && length(v.permissions) > 0 }
}
output "storage_account_sas_lookup_resource_types" {
  description = "Map of resource_types values across all storage_account_sas_lookup, keyed the same as var.storage_account_sas_lookup"
  value       = { for k, v in data.azurerm_storage_account_sas.storage_account_sas_lookup : k => one(v.resource_types) if v.resource_types != null && length(v.resource_types) > 0 }
}
output "storage_account_sas_lookup_sas" {
  description = "Map of sas values across all storage_account_sas_lookup, keyed the same as var.storage_account_sas_lookup"
  value       = { for k, v in data.azurerm_storage_account_sas.storage_account_sas_lookup : k => v.sas if v.sas != null && length(v.sas) > 0 }
  sensitive   = true
}
output "storage_account_sas_lookup_services" {
  description = "Map of services values across all storage_account_sas_lookup, keyed the same as var.storage_account_sas_lookup"
  value       = { for k, v in data.azurerm_storage_account_sas.storage_account_sas_lookup : k => one(v.services) if v.services != null && length(v.services) > 0 }
}
output "storage_account_sas_lookup_signed_version" {
  description = "Map of signed_version values across all storage_account_sas_lookup, keyed the same as var.storage_account_sas_lookup"
  value       = { for k, v in data.azurerm_storage_account_sas.storage_account_sas_lookup : k => v.signed_version if v.signed_version != null && length(v.signed_version) > 0 }
}
output "storage_account_sas_lookup_start" {
  description = "Map of start values across all storage_account_sas_lookup, keyed the same as var.storage_account_sas_lookup"
  value       = { for k, v in data.azurerm_storage_account_sas.storage_account_sas_lookup : k => v.start if v.start != null && length(v.start) > 0 }
}

