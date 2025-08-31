
resource "aws_vpc" "deploy_vpc" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = "${var.environment}-vpc"
  }
}

resource "aws_subnet" "deploy_subnet" {
  count             = length(var.subnet_cidrs)
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.subnet_cidrs[count.index]
  availability_zone = var.availability_zones[count.index]

  tags = {
    Name = "${var.environment}-subnet-${count.index}"
  }
}

