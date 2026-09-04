variable "tenant_id" {
  description = "The Tenant ID for the Azure subscription."
  type        = string
  default     = "bf451fd9-d382-4da8-9c1a-179a96a4d2f3"
}

variable "subscription_id" {
  description = "The Subscription ID for the Azure subscription."
  type        = string
  default     = "c7450111-a44d-47e1-86a4-dce7ad5769bf"
}

variable "organization_name" {
  type    = string
  default = "amiasea"
}