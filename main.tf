terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "3.2.2"
    }
  }
}

resource "null_resource" "example" {
}

module "foo" {
  source = "./modules/foo"
}
