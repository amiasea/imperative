# data "azurerm_client_config" "current" {}

# resource "azurerm_key_vault" "imperative" {
#   name                = "kv-imperative"
#   location            = azurerm_resource_group.imperative.location
#   resource_group_name = azurerm_resource_group.imperative.name

#   tenant_id = data.azurerm_client_config.current.tenant_id

#   sku_name                  = "standard"
#   rbac_authorization_enabled = true

#   soft_delete_retention_days = 90
#   purge_protection_enabled   = false

#   public_network_access_enabled = true
# }

# resource "azuread_application_registration" "amiasea" {
#   display_name     = "amiasea-app"
#   sign_in_audience = "AzureADMyOrg"
# }

# resource "azuread_service_principal" "amiasea" {
#   client_id = azuread_application_registration.amiasea.client_id
# }

# resource "azuread_application_federated_identity_credential" "example" {
#   application_id = azuread_application_registration.amiasea.id

#   display_name = "github-actions"

#   audiences = [
#     "api://AzureADTokenExchange"
#   ]

#   issuer = "https://token.actions.githubusercontent.com"

#   subject = "repo:amiasea/example:ref:refs/heads/main"
# }

# resource "azurerm_resource_group" "imperative" {
#   name     = "amiasea-imperative"
#   location = "East US"
# }