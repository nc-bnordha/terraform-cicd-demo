terraform {
  backend "gcs" {
    bucket = "nc-terraform-cloudrun-demo-03-tfstate"
    prefix = "cloudrun-demo"
  }
}