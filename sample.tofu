terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  required_version = ">= 1.5.0"
}

provider "aws" {
  region = "us-east-1"
}

locals {
  cidr_block = "10.0.0.0/19"
  name       = "vpc1"
}

resource "aws_vpc" "main" {
  cidr_block = local.cidr_block

  tags = {
    Name = local.name
  }
}
