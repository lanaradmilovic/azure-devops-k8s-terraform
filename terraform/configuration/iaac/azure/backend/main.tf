provider "azurerm" {
  features {}
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
}

resource "azurerm_resource_group" "resource_group" {
  name     = var.resource_group
  location = var.location
  tags = {
    environment = var.environment
  }
}

resource "azurerm_storage_account" "storage_account" {
  name                     = var.storage_account
  location                 = var.location
  resource_group_name      = azurerm_resource_group.resource_group.name
  account_tier             = "Standard"
  account_replication_type = "LRS"
  tags = {
    environment = var.environment
  }
}

resource "azurerm_storage_container" "storage_container" {
  name                  = var.storage_container
  storage_account_name  = azurerm_storage_account.storage_account.name
  container_access_type = "private"
}
