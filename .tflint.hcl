// https://github.com/terraform-linters/tflint/blob/master/docs/user-guide/config.md
config {
  module = false
  force  = false
}

// using "recommended" set of rules is sufficient
plugin "terraform" {
  enabled = true
  preset  = "recommended"
}

// we do want to enforce naming conventions
rule "terraform_naming_convention" {
  enabled = true
}

// we do not want to enforce specifying a required Terraform version as we usually run the configs with the latest version
rule "terraform_required_version" {
  enabled = false
}

// add special rules for MS Azure Resource Manager
plugin "azurerm" {
  enabled = true
  version = "0.23.0"
  source  = "github.com/terraform-linters/tflint-ruleset-azurerm"
}
