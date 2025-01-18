<!-- BEGIN_TF_DOCS -->
# Azure - Resource Group Module

## Introduction

This module will create a new Resource Group in Azure.

<!-- markdownlist-disable MD033 -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | ~> 4.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_resource_group.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |

<!-- markdownlist-disable MD033 -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_location"></a> [location](#input\_location) | (Required) The Azure Region where the Resource Group should exist. | `string` | n/a | yes |
| <a name="input_managed_by"></a> [managed\_by](#input\_managed\_by) | (Optional) The ID of the resource or application that manages this Resource Group. | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | (Required) The Name which should be used for this Resource Group. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | (Optional) A mapping of tags which should be assigned to the Resource Group. | `map(string)` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | Resource group id |
| <a name="output_location"></a> [location](#output\_location) | Resource group location |
| <a name="output_name"></a> [name](#output\_name) | Resource group name |
| <a name="output_rg"></a> [rg](#output\_rg) | Resource group object |

## Usage

```terraform
module "resource_group" {
  source              = "Azure/resource-group/azurerm"
  resource_group_name = "rg-dev-demo-01"
  location            = "westus"

  tags = {
    environment = "dev"
    usecase     = "demo"
  }
}
```

## References

| No | URL Link |
|----|-----------|
| 1 | [HashiCorp Azurerm Documentation: Resource group](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) |
| 2 | [Microsoft Official Documentation: Resource group](https://learn.microsoft.com/en-us/azure/azure-resource-manager/management/overview) |
<!-- END_TF_DOCS -->