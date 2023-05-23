terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "3.2.0"
    }
  }
}

resource "null_resource" "example" {
}

module "foo" {
  source = "./modules/foo"
}
