module   "postgres"  {
  source = "./modules/postgres"

  project =  var.project
  region = var.region
  password = var.database_password
}

