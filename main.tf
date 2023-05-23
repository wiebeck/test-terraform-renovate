terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = ">= 3.2.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.5.0"
    }
  }
}

provider "random" {
}

resource "null_resource" "example" {
}

module "foo" {
  source = "./modules/foo"
}
