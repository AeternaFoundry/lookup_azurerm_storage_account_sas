data "azurerm_storage_account_sas" "storage_account_sas_lookup" {
  for_each = var.storage_account_sas_lookup

  connection_string = each.value.connection_string
  expiry            = each.value.expiry
  start             = each.value.start
  https_only        = each.value.https_only
  ip_addresses      = each.value.ip_addresses
  signed_version    = each.value.signed_version

  resource_types {
    container = each.value.resource_types.container
    object    = each.value.resource_types.object
    service   = each.value.resource_types.service
  }

  services {
    blob  = each.value.services.blob
    file  = each.value.services.file
    queue = each.value.services.queue
    table = each.value.services.table
  }

  dynamic "permissions" {
    for_each = each.value.permissions != null ? [each.value.permissions] : []
    content {
      add     = permissions.value.add
      create  = permissions.value.create
      delete  = permissions.value.delete
      filter  = permissions.value.filter
      list    = permissions.value.list
      process = permissions.value.process
      read    = permissions.value.read
      tag     = permissions.value.tag
      update  = permissions.value.update
      write   = permissions.value.write
    }
  }
}

