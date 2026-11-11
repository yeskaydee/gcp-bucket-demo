variable "project_id" {
  type = string
}

variable "bucket_name" {
  type = string

  validation {
    condition = can(regex(
      "^gcs-(ew1|as1)-[a-z0-9]+-(dev|test)$",
      var.bucket_name
    ))

    error_message = "Bucket name must follow gcs-(ew1|as1)-<appname>-(dev|test)."
  }
}

variable "location" {
  type = string
}

variable "environment" {
  type = string
}