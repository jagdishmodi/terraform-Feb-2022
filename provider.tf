terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.70"
    }
  }
  backend "s3"{
    bucket = "terraform-s3-backend-2022"
    key = "trainer/terraform.tfstate"
    region = "ap-south-1"
  }
}
variable "env" {

    description = "The env for tags"
     default = "Prod"
}

provider "aws" {
  # Configuration options
  region  = "ap-south-1"
  profile = "default"
}

provider "aws"{
  alias = "mumbai"
  region = "ap-south-1"
}

provider "aws"{
  alias = "us-west"
  region = "us-west-1"
}
