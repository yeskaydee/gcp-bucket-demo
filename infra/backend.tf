terraform {
  backend "gcs" {
    bucket = "backstage-demo-state-bucket"
    prefix = "gcs-bucket-demo"
  }
}