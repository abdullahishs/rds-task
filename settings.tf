terraform {
  required_providers {
    aws = ">= 4.48.0"
  }
}

provider "aws" {
  region = "eu-west-2"
}
