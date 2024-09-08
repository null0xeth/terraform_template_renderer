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
