terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.66.0"
    }
  }

  backend "s3" {
    bucket = "sivaram-practice-terraform"
    key    = "expense-tools"
    region = "us-east-1"
    dynamodb_table = "sivaram-practice-terraform-locking"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}