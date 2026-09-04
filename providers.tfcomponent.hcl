required_providers {
  azurerm = {
    source  = "hashicorp/azurerm"
    version = "~> 5.3.0"
  }
  github = {
    source  = "integrations/github"
    version = "~> 6.13.0"
  }
}

provider "azurerm" "this" {
  config {
    tenant_id       = var.azure_tenant_id
    client_id       = var.azure_client_id
    subscription_id = var.azure_subscription_id

    oidc_token = var.azure_identity_token

    use_oidc = true

    features {}
  }
}

provider "github" "this" {
  config {
    owner = var.organization_name

    app_auth {
      id              = var.github_app_id
      installation_id = var.github_app_installation_id
      pem_file        = component.whisper_genie.amiasea_github_app_private_key
    }
  }
}
