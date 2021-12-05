resource "google_app_engine_application_url_dispatch_rules" "web_service" {
  dispatch_rules {
    domain  = "*"
    path    = "/api/*"
    service = "default"
  }

  dispatch_rules {
    domain  = "*"
    path    = "/*"
    service = "frontend"
  }
}
