store "varset" "imperative" {
  name     = "imperative"
  category = "terraform"
}

identity_token "azure" {
  audience = ["api://AzureADTokenExchange"]
}

deployment "imperative" {
  inputs = {
    organization_name          = "amiasea"
    azure_tenant_id            = store.varset.imperative.stable.imperative_azure_tenant_id
    azure_client_id            = store.varset.imperative.stable.imperative_azure_client_id
    azure_subscription_id      = store.varset.imperative.stable.imperative_azure_subscription_id
    azure_identity_token       = identity_token.azure.jwt
    github_app_id              = store.varset.imperative.stable.imperative_github_app_id
    github_app_installation_id = store.varset.imperative.stable.imperative_github_app_installation_id
  }
}