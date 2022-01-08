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
  send_grid_api_key = var.send_grid_api_key
}

module "app_engine" {
  source = "./modules/app_engine"

  project = var.project
  region = var.region
}

module "image_bucket" {
  source = "./modules/image_bucket"

  image-bucket-name = var.image_bucket_name
}
