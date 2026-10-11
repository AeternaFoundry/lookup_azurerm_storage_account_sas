variable "storage_account_sas_lookup" {
  description = <<EOT
Map of storage_account_sas_lookup, attributes below
Required:
    - connection_string
    - expiry
    - start
    - resource_types (block):
        - container (required)
        - object (required)
        - service (required)
    - services (block):
        - blob (required)
        - file (required)
        - queue (required)
        - table (required)
Optional:
    - https_only
    - ip_addresses
    - signed_version
    - permissions (block):
        - add (optional)
        - create (optional)
        - delete (optional)
        - filter (optional)
        - list (optional)
        - process (optional)
        - read (optional)
        - tag (optional)
        - update (optional)
        - write (optional)
EOT

  type = map(object({
    connection_string = string
    expiry            = string
    start             = string
    https_only        = optional(bool)
    ip_addresses      = optional(string)
    signed_version    = optional(string)
    resource_types = object({
      container = bool
      object    = bool
      service   = bool
    })
    services = object({
      blob  = bool
      file  = bool
      queue = bool
      table = bool
    })
    permissions = optional(object({
      add     = optional(bool)
      create  = optional(bool)
      delete  = optional(bool)
      filter  = optional(bool)
      list    = optional(bool)
      process = optional(bool)
      read    = optional(bool)
      tag     = optional(bool)
      update  = optional(bool)
      write   = optional(bool)
    }))
  }))
  # Note: 5 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

