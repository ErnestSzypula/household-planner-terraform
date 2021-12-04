module "postgres" {
  source = "./modules/postgres"

  project  = var.project
  region   = var.region
  password = var.database_password
}

module "secrets" {
  source = "./modules/secrets"

  database_password = var.database_password
  project           = var.project
}

