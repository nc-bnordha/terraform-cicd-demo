terraform {
  backend "gcs" {
    bucket = "nc-terraform-bootstrap-demo-01-tfstate"
    prefix = "cloudrun-demo"
  }
}