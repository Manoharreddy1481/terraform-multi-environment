terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "5.66.0"
    }
    
  }
  backend "s3" {
    bucket = "81s-remote-locking1"
    key    = "workspaces"
    region = "us-east-1"
    dynamodb_table = "81s-remote-locking"
    
  }
}

provider "aws" {
    region = "us-east-1"
}