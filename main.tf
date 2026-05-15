terraform {
  required_version = ">= 1.5"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}




resource "google_cloud_run_v2_service" "demo" {
  name     = "terraform-cloudrun-demo"
  location = var.region

  template {
    containers {
      image = var.image

      env {
        name  = "ENVIRONMENT"
        value = var.environment
      }
    }
  }
}