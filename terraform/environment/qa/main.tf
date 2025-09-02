
provider "aws" {
  region = "us-east-2"
}

module "vpc_subnet" {
  source             = "../../../modules/vpc_subnet"
  vpc_cidr           = var.vpc_cidr
  subnet_cidrs       = var.subnet_cidrs
  availability_zones = var.availability_zones
  environment        = "qa"
}

