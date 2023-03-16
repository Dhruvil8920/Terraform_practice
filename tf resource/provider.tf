provider "github" {
  token = " ${var.tokenForGitHub} "
}

terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.47.0"
    }
  }
}

provider "azurerm" {
  skip_provider_registration = true
  features {
  }
    client_id = var.client_id
    client_secret= var.client_secret
    tenant_id = var.tenant_id
    subscription_id = var.subscription_id
}