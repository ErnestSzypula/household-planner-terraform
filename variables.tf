variable "project" {}

variable "credentials_file" {}

variable "region" {
  default = "us-central1"
}

variable "zone" {
  default = "us-central1-a"
}

variable "database_password" {}

variable "image_bucket_name" {
  default = "image-household-planner-333519"
}