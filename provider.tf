terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.66.1"
    }
  }
}

provider "aws" {
  region = "ap-southeast-1"
}


terraform {
  backend "s3" {
    bucket         = "poceks1"
    key            = "terraform.tfstate"
    region         = "ap-southeast-1"
    dynamodb_table = "poceks1"
  }
}
