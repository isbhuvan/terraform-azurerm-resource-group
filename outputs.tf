output "id" {
  description = "Resource group id"
  value       = azurerm_resource_group.this.id
}

output "location" {
  description = "Resource group location"
  value       = azurerm_resource_group.this.location
}

output "name" {
  description = "Resource group name"
  value       = azurerm_resource_group.this.name
}

output "rg" {
  description = "Resource group object"
  value       = azurerm_resource_group.this
}
