<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.64.0 |
| <a name="requirement_local"></a> [local](#requirement\_local) | 2.5.1 |
| <a name="requirement_null"></a> [null](#requirement\_null) | 3.2.2 |
| <a name="requirement_proxmox"></a> [proxmox](#requirement\_proxmox) | >=0.62.0 |

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
| <a name="input_node_id"></a> [node\_id](#input\_node\_id) | Systematically assigned, unique ID | `string` | `"none"` | no |
| <a name="input_provider_aws"></a> [provider\_aws](#input\_provider\_aws) | hashicorp/aws provider configuration variables | <pre>object({<br>    region = optional(string)<br>  })</pre> | `{}` | no |
| <a name="input_provider_proxmox"></a> [provider\_proxmox](#input\_provider\_proxmox) | bpg/proxmox provider configuration variables | <pre>object({<br>    endpoint          = optional(string)<br>    username          = optional(string)<br>    agent_socket      = optional(string)<br>    node              = optional(string)<br>    default_datastore = optional(string)<br>  })</pre> | `{}` | no |
| <a name="input_templates"></a> [templates](#input\_templates) | n/a | `any` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->