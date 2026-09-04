data "azurerm_key_vault" "imperative_key_vault" {
    resource_group_name = "rg-amiasea-imperative"
    name = "kv-amiasea-imperative"
}

data "azurerm_key_vault_secret" "amiasea_github_app_private_key" {
  name         = "amiasea-github-app-private-key"
  key_vault_id = data.azurerm_key_vault.imperative_key_vault.id
}