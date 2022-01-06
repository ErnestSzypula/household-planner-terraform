resource "google_storage_bucket" "auto-expire" {
  name          = var.image-bucket-name
  location      = "EU"
  force_destroy = true
}