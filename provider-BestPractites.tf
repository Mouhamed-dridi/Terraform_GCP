provider "google" {
  project = "qwiklabs-gcp-04-4b046ab85e2c"
  region = "us-central1"
}

#share state fiel in bucket storage to share with other devloper in team
# gcloud storage mb gs://terraform-state-repo
terraform {
  backend "gcs" {
    bucket = "terraform-state-repo"
    prefix = "terraform/state"
  }

# waht verstion that we used 
required_providers {
   google = {
      source  = "hasgcorip/google"
      version = "~> Terraform v1.6.4"
    }
  }
}

