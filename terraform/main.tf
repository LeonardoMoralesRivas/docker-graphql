terraform {
  required_version = "1.15.6"

  cloud {
    organization = "yexhz-aws"

    workspaces {
      name = "AWS-Workspace"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
