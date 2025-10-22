terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
    google = {
      source  = "hashicorp/google"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

provider "google" {
  project = "trek-and-glide"
  region  = "us-east1"
}

resource "aws_s3_bucket" "demo_bucket" {
  bucket = "tf-demo-bucket-${random_id.random_name.hex}"
}

resource "google_storage_bucket" "demo_bucket" {
  name     = "tf-demo-gcs-${random_id.random_name.hex}"
  location = "us-east1"
}

// Utils
resource "random_id" "random_name" {
  byte_length = 8
}
