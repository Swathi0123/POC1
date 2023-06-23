provider "aws" {
  region = "us-east-1"
  git 
}

terraform {
  backend "s3" {
    bucket = "tf-state-terraform1"
    region = "us-east-1"
    key    = "terraform.tfstate"

  }
  }
