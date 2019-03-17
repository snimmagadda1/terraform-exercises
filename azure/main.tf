# Configure the provider
provider "azurerm" {
    version = "=1.20.0"
}

# Create a new resource group
resource "azurerm_resource_group" "rg" {
    name     = "myTFResourceGroup"
    location = "eastus"
}
