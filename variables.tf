variable "project_id" {
  type = string
}

variable "region" {
  type    = string
  default = "us-central1"
}

variable "image" {
  type    = string
  default = "gcr.io/cloudrun/hello"
}

variable "environment" {
  type    = string
  default = "dev"
}