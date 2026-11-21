terraform {
  required_providers {
    iosxe = {
      source  = "CiscoDevNet/iosxe"
      version = "~> 0.6.0"
    }
  }
}

provider "iosxe" {
  url      = var.c8200l_url
  username = var.c8200l_username
  password = var.c8200l_password
  insecure = true
}

resource "iosxe_interface_loopback" "lab_loopback" {
  name              = 100
  description       = "Loopback creada con Terraform IaC - Grupo 2"
  ipv4_address      = "100.100.100.1"
  ipv4_address_mask = "255.255.255.255"
  shutdown          = false
}