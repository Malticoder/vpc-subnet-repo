
provider "aws" {
  region = "us-east-2"
}

module "vpc_subnet" {
  source             = "../../modules/vpc_subnet"
  vpc_cidr           = "10.1.0.0/16"
  subnet_cidrs       = ["10.1.1.0/24", "10.1.2.0/24" ]
  availability_zones = ["us-east-2a", "us-east-2b" ]
  environment        = "qa"
}






