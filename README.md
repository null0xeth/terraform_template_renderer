<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_local"></a> [local](#requirement\_local) | 2.5.1 |
| <a name="requirement_null"></a> [null](#requirement\_null) | 3.2.2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_local"></a> [local](#provider\_local) | 2.5.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [local_file.templated](https://registry.terraform.io/providers/hashicorp/local/2.5.1/docs/resources/file) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_node_id"></a> [node\_id](#input\_node\_id) | Systematically assigned, unique ID | `string` | `null` | no |
| <a name="input_templates"></a> [templates](#input\_templates) | Map of Template objects that we will be populating and rendering | <pre>map(object({<br>    template_source   = optional(string)<br>    local_destination = optional(string)<br>    base_file         = optional(string)<br>    with_node_id      = optional(bool)<br>    variables         = optional(object({}))<br>  }))</pre> | `{}` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->