provider "aws" {
  region     = "${var.region}"
}

#creating VPC 

module "vpc" {
  source = "./modules/vpc"
}