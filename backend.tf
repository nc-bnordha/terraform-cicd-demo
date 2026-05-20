terraform {
  backend "gcs" {
    bucket = "nc-terraform-cicd-demo-tfstate"
    prefix = "cloudrun-demo/${terraform.workspace}"
  }
}