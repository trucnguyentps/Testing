terraform {

  required_providers {
    azurerm = "~> 3.24.0"
  }
}

provider "azurerm" {
  subscription_id = ""
  features {}
}

