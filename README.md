<!-- BEGIN_TF_DOCS -->
# Azure - Resource Group Module

## Introduction

This module will create a new Resource Group in Azure.

<!-- markdownlist-disable MD033 -->
## Requirements

The following requirements are needed by this module:

- <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) (~> 4.0)

## Providers

The following providers are used by this module:

- <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) (~> 4.0)

## Modules

No modules.

## Resources

The following resources are used by this module:

- [azurerm_resource_group.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) (resource)

<!-- markdownlist-disable MD033 -->
## Required Inputs

The following input variables are required:

### <a name="input_location"></a> [location](#input\_location)

Description: (Required) The Azure Region where the Resource Group should exist.

Type: `string`

### <a name="input_name"></a> [name](#input\_name)

Description: (Required) The Name which should be used for this Resource Group.

Type: `string`

## Optional Inputs

The following input variables are optional (have default values):

### <a name="input_managed_by"></a> [managed\_by](#input\_managed\_by)

Description: (Optional) The ID of the resource or application that manages this Resource Group.

Type: `string`

Default: `null`

### <a name="input_tags"></a> [tags](#input\_tags)

Description: (Optional) A mapping of tags which should be assigned to the Resource Group.

Type: `map(string)`

Default: `null`

## Outputs

The following outputs are exported:

### <a name="output_id"></a> [id](#output\_id)

Description: Resource group id

### <a name="output_location"></a> [location](#output\_location)

Description: Resource group location

### <a name="output_name"></a> [name](#output\_name)

Description: Resource group name

### <a name="output_rg"></a> [rg](#output\_rg)

Description: Resource group object

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