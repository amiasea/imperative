variable "azure_tenant_id" {
  type        = string
  description = "Azure tenant ID."
}

variable "azure_subscription_id" {
  type        = string
  description = "Azure subscription ID."
}

variable "azure_client_id" {
  type        = string
  description = "Azure client ID."
}

variable "azure_identity_token" {
  type        = string
  description = "OIDC identity token used to authenticate to Azure."
  ephemeral   = true
}

variable "organization_name" {
  type        = string
  description = "GitHub organization name."
}

variable "github_app_id" {
  type = string
}

variable "github_app_installation_id" {
  type = string
}
