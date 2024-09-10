variable "provider_aws" {
  description = "hashicorp/aws provider configuration variables"
  type = object({
    region = optional(string)
  })
  default = {}
}

variable "provider_proxmox" {
  description = "bpg/proxmox provider configuration variables"
  type = object({
    endpoint          = optional(string)
    username          = optional(string)
    agent_socket      = optional(string)
    node              = optional(string)
    default_datastore = optional(string)
  })
  default = {}
}

variable "node_id" {
  description = "Systematically assigned, unique ID"
  type        = string
  default     = "none"
}

variable "templates" {}
#   description = "Map of Template objects that we will be populating and rendering"
#   type = map(object({
#     template_source   = optional(string)
#     local_destination = optional(string)
#     base_file         = optional(string)
#     with_node_id      = optional(bool)
#     variables         = optional(any)
#   }))
#   default = {}
# }


