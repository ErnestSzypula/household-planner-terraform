resource "google_app_engine_application_url_dispatch_rules" "web_service" {
  dispatch_rules {
    domain  = "household-planner-333519.uc.r.appspot.com"
    path    = "/api/*"
    service = "default"
  }

  dispatch_rules {
    domain  = "photos-dot-household-planner-333519.uc.r.appspot.com"
    path    = "/*"
    service = "photos"
  }

  dispatch_rules {
    domain  = "translation-dot-household-planner-333519.uc.r.appspot.com"
    path    = "/*"
    service = "translation"
  }

  dispatch_rules {
    domain  = "household-planner-333519.uc.r.appspot.com"
    path    = "/*"
    service = "frontend"
  }

  dispatch_rules {
    domain  = "notifications-dot-household-planner-333519.uc.r.appspot.com"
    path    = "/*"
    service = "notifications"
  }
}
