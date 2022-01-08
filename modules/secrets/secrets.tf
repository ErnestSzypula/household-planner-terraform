resource "google_secret_manager_secret" "database-password" {
  secret_id = "database-password"
  project = var.project

  replication {
    user_managed {
      replicas {
        location = "us-central1"
      }
    }
  }
}

resource "google_secret_manager_secret_version" "database-password-v1" {
  secret = google_secret_manager_secret.database-password.id


  secret_data = var.database_password
}

resource "google_secret_manager_secret" "send-grid-api-key" {
  secret_id = "send-grid-api-key"
  project = var.project

  replication {
    user_managed {
      replicas {
        location = "us-central1"
      }
    }
  }
}

resource "google_secret_manager_secret_version" "send-grid-api-key-v1" {
  secret = google_secret_manager_secret.send-grid-api-key.id


  secret_data = var.send_grid_api_key
}