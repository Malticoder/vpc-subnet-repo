
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.12.0"
    }
  }
}


provider "aws" {
  region = "us-east-1"
}


provider "aws" {
  alias  = "us-east-2"
  region = "us-east-2"
}

