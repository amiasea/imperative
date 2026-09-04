component "whisper_genie" {
  source = "./whisper_genie"

  providers = {
    azurerm = provider.azurerm.this
  }
}

# component "deployment" {
#   source = "./deployment"

#   inputs = {
#     organization_name                       = var.organization_name
#     azure_tenant_id                         = var.azure_tenant_id
#     azure_client_id                         = var.azure_client_id
#     azure_subscription_id                   = var.azure_subscription_id
#     github_app_id                           = var.github_app_id
#     github_app_installation_id              = var.github_app_installation_id
#   }

#   providers = {
#     azurerm = provider.azurerm.this
#     github  = provider.github.this
#   }
# }
