terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.4.0"
    }
  }

  backend "s3" {
      bucket = "first-bucket-marinamagaldi"
      key    = "aws-vpc/terraform"
      region = "us-east-1"
 }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      owner      = "marinamagaldi"
      managed-by = "terraform"
    }
  }
}

