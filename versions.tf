terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "2.5.1"
    }
    null = {
      source  = "hashicorp/null"
      version = "3.2.2"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.64.0"
    }
    proxmox = {
      source  = "bpg/proxmox"
      version = ">=0.62.0"
    }
  }
}


