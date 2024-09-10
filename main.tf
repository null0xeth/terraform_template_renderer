resource "local_file" "templated" {
  for_each = var.templates
  content = templatestring(each.value.template_source, merge(
    each.value.variables,
    each.value.with_node_id ? { node_id = var.node_id } : {}
  ))
  filename = (each.value.with_node_id ? "${each.value.local_destination}${var.node_id}.${each.value.base_file}" : "${each.value.local_destination}${each.value.base_file}")
}
