provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "tf-state-terraform1"
    region = "us-east-1"
    key    = "terraform.tfstate"
    #profile = "default"
  }
  }
