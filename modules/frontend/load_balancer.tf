resource "google_compute_backend_bucket" "frontend-backend-bucket" {
  name        = "frontend-backend-bucket"
  bucket_name = google_storage_bucket.frontend-site.name
}

resource "google_compute_url_map" "url-map" {
  name        = "url-map"
  default_service = google_compute_backend_bucket.frontend-backend-bucket.id

  host_rule {
    hosts        = ["*"]
    path_matcher = var.name
  }

  path_matcher {
    name            = var.name
    default_service = google_compute_backend_bucket.frontend-backend-bucket.id
  }

}

resource "google_compute_target_http_proxy" "lb-proxy" {

  depends_on = [google_compute_url_map.url-map]
  name     = "lb-proxy"
  provider = google-beta
  url_map  = google_compute_url_map.url-map.id
}

resource "google_compute_global_address" "lb-address" {
  name                  = "address"
}

resource "google_compute_global_forwarding_rule" "address" {
  name                  = "frontend-80"
  ip_address            = google_compute_global_address.lb-address.address
  port_range            = "80"
  target =            google_compute_target_http_proxy.lb-proxy.id
}

