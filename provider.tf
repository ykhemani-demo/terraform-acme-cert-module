terraform {
  required_providers {
    tls = {
      source  = "hashicorp/tls"
      version = "3.4.0"
    }
    acme = {
      source  = "vancluever/acme"
      version = "2.10.0"
    }
  }
}

provider "acme" {
  server_url = var.acme_server_url
}

