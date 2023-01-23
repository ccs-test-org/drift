terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

# Create a VPC
resource "aws_vpc" "ccs-test-org-vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    yor_trace = "5b98237b-840f-4c56-96ea-77d1ee294466"
    git_repo  = "drift"
  }
}