variable "node_id" {
  description = "Systematically assigned, unique ID"
  type        = string
  default     = null
}

variable "templates" {
  description = "Map of Template objects that we will be populating and rendering"
  type = map(object({
    template_source   = optional(string)
    local_destination = optional(string)
    base_file         = optional(string)
    with_node_id      = optional(bool)
    variables         = optional(object({}))
  }))
  default = {}
}


