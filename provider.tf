terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.73.0"  #aws provider version 
    }
  }
   backend "s3" {
    bucket = "rajesh76-state-dev"
    key    = "minikube"
    region = "us-east-1"
    dynamodb_table = "rajesh76-locking-dev"
  }
} 

provider "aws" {
  region = "us-east-1"
}