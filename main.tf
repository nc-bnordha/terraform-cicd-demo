provider "google" {
  region = var.region
}

data "google_client_config" "current" {}

resource "google_cloud_run_v2_service" "demo" {
  name     = "terraform-cloudrun-demo"
  location = var.region

  template {
    containers {
      image = "gcr.io/cloudrun/hello"

      env {
        name  = "PROJECT_ID"
        value = data.google_client_config.current.project
      }
    }
  }
}