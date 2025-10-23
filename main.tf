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
  bucket = "tf-demo-bucket-terraform-youtube"
}

resource "google_storage_bucket" "demo_bucket" {
  name     = "tf-demo-gcs-terraform-youtube"
  location = "us-east1"
}