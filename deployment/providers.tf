terraform {
  required_version = ">= 1.15.8"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 5.3.0"
    }
    github = {
      source  = "integrations/github"
      version = "~> 6.13"
    }
  }
}