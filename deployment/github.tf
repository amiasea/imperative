resource "github_organization_custom_properties" "workspace" {
  property_name = "amiasea-workspace"
  value_type    = "multi_select"

  description = "The workspaces in which this repository participates."
}

resource "github_organization_custom_properties" "parent" {
  property_name = "amiasea-parent"
  value_type    = "string"

  description = "The logical parent under which this repository is grouped."
}

resource "github_organization_custom_properties" "display" {
  property_name = "amiasea-display"
  value_type    = "string"

  description = "The name used when this repository is represented in a workspace."
}