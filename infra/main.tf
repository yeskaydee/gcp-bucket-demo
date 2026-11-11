provider "google" {
  project = var.project_id
}

resource "google_storage_bucket" "demo" {
  project  = var.project_id
  name     = var.bucket_name
  location = var.location

  uniform_bucket_level_access = true
  public_access_prevention    = "enforced"

  versioning {
    enabled = true
  }

  labels = {
    environment = var.environment
    managed_by  = "backstage"
  }
}