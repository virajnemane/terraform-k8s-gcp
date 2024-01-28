provider "google" {
  project = "k8s-test-412614"
  region  = "us-central1"
}

# https://www.terraform.io/language/settings/backends/gcs
terraform {
  backend "gcs" {
    bucket = "k8sdevvirajgcp24"
    prefix = "terraform/state"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}


# module "kubernetes-engine_beta-private-cluster" {
#   source  = "terraform-google-modules/kubernetes-engine/google//modules/beta-private-cluster"
#   version = "29.0.0"
#   # insert the 6 required variables here
# }
