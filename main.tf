terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.54.0"
    }
  }
}

# Authentication information
provider "aws" {
  # region
  region = "cn-northwest-1"
  # AK
  access_key = var.AWS_ACCESS_KEY_ID
  # SK
  secret_key = var.AWS_SECRET_ACCESS_KEY
}

