variable "credentials" {}
variable "project" {}
variable "region" {}
variable "bucket" {}

provider "google" {
  credentials  = file(var.credentials)
  project      = var.project
  region       = var.region
  version      = "2.20"
}

terraform {
  backend "gcs" {
    bucket  = "tfstate_backup"
    credentials = "./.credentials/account.json"
  }
}

resource "google_storage_bucket" "backup" {
  name          = var.bucket
  location      = var.region
  storage_class = "STANDARD"
  bucket_policy_only = true
}
