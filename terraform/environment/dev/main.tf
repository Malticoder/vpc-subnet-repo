
provider "aws" {
  region = "us-east-1"
}

module "vpc_subnet" {
  source             = "../../modules/vpc_subnet"
  vpc_cidr           = "10.0.0.0/16"
  subnet_cidrs       = var.subnet_cidrs
  availability_zones = var.availability_zones
  environment        = "dev"
}







