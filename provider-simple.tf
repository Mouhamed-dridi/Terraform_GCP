#terraform init -upgrade

provider "google" {
  project = "qwiklabs-gcp-04-4b046ab85e2c"
  region  = "us-central1"
}

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 3.0.0"
    }
  }
}
