# locals {
#   flatmap = zipmap(module.deployment.server_name, module.deployment.server_ipv4)
#   merged_map = {
#     for tpl_id, tpl_conf in var.templates : tpl_id => {
#       source      = tpl_conf.template_source
#       variables   = merge(tpl_conf.variables, { ansible_map = module.deployment.raw_map }, { dirty_map = local.flatmap })
#       destination = tpl_conf.local_destination
#     }
#   }
# }

resource "local_file" "templated" {
  for_each = var.templates
  content = templatestring(each.value.source, merge(
    each.value.variables,
    {
      node_id = var.node_id
    }

  ))
  filename = (each.value.with_node_id ? "${each.value.destination}${var.node_id}.${each.value.base_file}" : "${each.value.destination}${each.value.base_file}")
}

###### WORKING
# resource "local_file" "local_inventory" {
#   content = templatefile("${path.module}/templates/${var.templates.local_inventory.source}", {
#     for k, v in var.local_inventory_variables : k => v
#   })
#   filename = "../../../ansible/${var.templates.local_inventory.local_destination}"
# }

# resource "local_file" "hosts" {
#   content = templatefile("${path.module}/templates/${var.templates.local_hosts.source}", {
#     for k, v in var.local_inventory_variables : k => v
#   })
#   filename = "../../../ansible/${var.templates.local_hosts.local_destination}"
# }
