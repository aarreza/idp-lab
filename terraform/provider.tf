# Configure the Microsoft Azure Provider
# provider "azurerm" {
#     # The "feature" block is required for AzureRM provider 2.x.
#     # If you're using version 1.x, the "features" block is not allowed.
#     version = ">=0.12.0"
#     features {}
# }

terraform {
  required_providers {
    azurerm = {
      # The "hashicorp" namespace is the new home for the HashiCorp-maintained
      # provider plugins.
      #
      # source is not required for the hashicorp/* namespace as a measure of
      # backward compatibility for commonly-used providers, but recommended for
      # explicitness.
      source  = "hashicorp/azurerm"
      # version = "~> 2.12"
      version = ">= 2.41.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}
