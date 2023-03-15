provider "github" {
  token = " ${var.tokenForGitHub} "
}

resource "github_repository" "terraform-first" {
  name        = "${var.NameOfGitRepo}"
  visibility = "public"
  auto_init = true
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

resource "azurerm_resource_group" "azure-resource" {
  location = "centralindia"
  name     = "tfrg"
}

resource "azurerm_storage_account" "tfstorage1" {
  name                     = "newtfstorage"
  resource_group_name      = azurerm_resource_group.azure-resource.name
  location                 = azurerm_resource_group.azure-resource.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "tfcontainer" {
  name                  = "input"
  storage_account_name  = azurerm_storage_account.tfstorage1.name
  container_access_type = "private"
}

resource "azurerm_storage_blob" "tfblob" {
  name                   = "blobfile"
  storage_account_name   = azurerm_storage_account.tfstorage1.name
  storage_container_name = azurerm_storage_container.tfcontainer.name
  type                   = "Block"
}