resource "google_storage_bucket" "frontend-site" {
  name          = var.name
  location      = "EU"
  project = var.project
  force_destroy = true

  uniform_bucket_level_access = false
}