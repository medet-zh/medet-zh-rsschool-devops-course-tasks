terraform {
  
  backend "s3" {
    bucket = "terraform-state-bucket-medet-rs-school"
    key = "global/s3/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform-state-locking"
    encrypt = true
  }
}

provider "aws" {
  region = "us-east-1"
}

