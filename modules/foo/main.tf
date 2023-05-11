terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.5.1"
    }
  }
}

resource "random_id" "server" {
  byte_length = 8
}

output "server_id" {
  value = random_id.server.hex
}
