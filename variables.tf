variable "node_id" {
  type    = string
  default = null
}

variable "templates" {}
#   type = map(object({
#     source       = optional(string, "inventory.tftpl")
#     destination  = optional(string, "inventory")
#     variables    = optional(object({}))
#     with_node_id = optional(bool, false)
#     base_file    = optional(string)
#     #remote_destination = optional(string, "/home/null0x/inventory")
#   }))
#   default = {}
# }

# variable "targets" {
#   type = map(object({
#     id       = optional(string, "vault_server")
#     ipv4     = optional(string)
#     ssh_user = optional(string, "null0x")
#     ssh_key  = optional(string, "~/.ssh/ansible_ed25519")
#   }))
#   default = {}
# }

# variable "local_inventory_variables" {
#   type = map(any)
# }

# variable "hostmap" {
#   type = map(any)
# }

