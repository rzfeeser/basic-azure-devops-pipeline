# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}

  # subscription_id = "dcXYZ168-a050-4...-8496-c...b50485xx"
  # tenant_id       = "b2XYZ98d-4f5a-4...-a4c9-3...b93fa3xx"
  # client_id       = "1bXYZ9d0-f341-4...-bec8-8...cbb5e6xx"
  # client_secret   = "upXYZ...C7Hg...Wi8YNrbhoX0BcE.ceDM...xx"
}

resource "azurerm_network_security_group" "example" {
  name                = "example-security-group"
  resource_group_name = "Testing"
  location            = "westus2"
}
