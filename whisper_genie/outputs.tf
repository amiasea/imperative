 # TODO: This is broken, it should be ephemeral. https://github.com/hashicorp/terraform/issues/37822
output "amiasea_github_app_private_key" {
    value = data.azurerm_key_vault_secret.amiasea_github_app_private_key.value
    ephemeral = false
    sensitive = true
}