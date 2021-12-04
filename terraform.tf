provider "google" {
  credentials = file(var.credentials_file)

  project = var.project
  region  = var.region
  zone    = var.zone
}

provider "google-beta" {
  project = var.project
  region  = var.region
  zone    = var.zone
}


terraform {
  backend "gcs" {
    bucket = "state-household-planner"
    prefix = "terraform/state"
  }
}


