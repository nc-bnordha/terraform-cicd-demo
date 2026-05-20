variable "project_id" {
  description = "The GCP project ID to deploy to."
  type        = string
}

variable "region" {
  description = "The GCP region to deploy resources in."
  type        = string
  default     = "us-central1"
}

variable "image" {
  description = "The container image to deploy."
  type        = string
}

variable "environment" {
  description = "The name of the environment (e.g., dev, prod)."
  type        = string
}