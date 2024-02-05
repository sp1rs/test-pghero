terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.61.0"
    }
    local = {
      source  = "hashicorp/local"
      version = "2.0.0"
    }
    null = {
      source  = "hashicorp/null"
      version = "3.0.0"
    }
  }
  required_version = "=  1.4.2"
}
