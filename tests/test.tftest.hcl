provider "azurerm" {
  features {}
  subscription_id = var.subscription_id # need to set using command line and with variable definition Files.
}

variables {
  name     = "rg-test-demo-01"
  location = "eastus2"
  tags = {
    environment = "test"
    usecase     = "example"
  }
}

run "best_case" {
  assert {
    condition     = azurerm_resource_group.this.name == var.name
    error_message = format("Failed in Resource group name validation. Expected %s but received %s", "rg-test-01", azurerm_resource_group.this.name)
  }

  assert {
    condition     = azurerm_resource_group.this.location == var.location
    error_message = format("Failed in Resource group location validation. Expected %s but received %s", "eastus2", azurerm_resource_group.this.location)
  }

  assert {
    condition     = azurerm_resource_group.this.tags["environment"] == var.tags["environment"]
    error_message = format("Failed in Resource group tag validation. Expected %s but received %s", "test", azurerm_resource_group.this.tags["environment"])
  }
}

run "invalid_rg_name" {
  command = plan

  variables {
    name = "rg"
  }

  expect_failures = [var.name]
}