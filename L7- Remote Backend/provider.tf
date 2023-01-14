terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.49.0"
    }
  }
  
 backend "s3" {
    bucket = "newbatchbucket-1"
    key    = "prod/prod.terraform.tfstate"
    region = "ap-south-1"
  }
}

provider "aws" {
  # Configuration options
  alias = "subscription1"
  
}
