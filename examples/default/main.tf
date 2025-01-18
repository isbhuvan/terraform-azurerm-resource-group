module "resource_group" {
  source = "../../"

  name     = "rg-dev-example-01"
  location = "eastus2"
  tags = {
    environment = "dev"
    usecase     = "example"
  }
}