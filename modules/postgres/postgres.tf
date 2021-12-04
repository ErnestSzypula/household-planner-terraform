resource "google_sql_database" "household-planner" {
  name     = "household-planner"
  instance = google_sql_database_instance.instance.name
  project = var.project
}

resource "google_sql_database_instance" "instance" {
  name             = "postgres-instance"
  database_version = "POSTGRES_13"
  region           = var.region

  settings {
    tier = "db-f1-micro"
    activation_policy = "ON_DEMAND"
  }

  deletion_protection  = "true"
}


resource "google_sql_user" "users" {
  name     = "household-planner"
  instance = google_sql_database_instance.instance.name
  password = var.password
}