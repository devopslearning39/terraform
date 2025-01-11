terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.82.2"
    }
  }
  backend "s3" {
    bucket = "jella-praveen"
    key    = "logsJp"
    region = "us-east-1"
    dynamodb_table = "jella"
  }
}

provider "aws" {
  region = "us-east-1"
}