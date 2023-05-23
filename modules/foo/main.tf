terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
    }
    # an unused provider in a child module
    local = {
      source  = "hashicorp/local"
      version = "2.4.0"
    }
  }
}

output "server_id" {
  value = random_id.server.hex
  # this should give a tflint error because we require descriptions for every output
}

resource "random_id" "server" {
  byte_length = 8
}
