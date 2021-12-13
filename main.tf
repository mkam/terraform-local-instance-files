terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = ">= 2.1.0"
    }
  }
}
resource "local_file" "address" {
  for_each = var.services
  content  = each.value.address
  filename = "resources/${each.value.id}.txt"
}
