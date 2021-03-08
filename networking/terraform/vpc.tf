provider "aws" {
  region = var.aws_region
}

resource "aws_vpc" "f5-volterra-vpc" {
  cidr_block           = "10.0.0.0/16"
  instance_tenancy     = "default"
  enable_dns_support   = "true"
  enable_dns_hostnames = "true"
  enable_classiclink   = "false"

  tags = {
    Name = "${var.prefix}-f5-volterra-vpc"
  }
}


resource "aws_internet_gateway" "f5-volterra-vpc-gw" {
  vpc_id = aws_vpc.f5-volterra-vpc.id

  tags = {
    Name = "${var.prefix}-f5-volterra-igw"
  }
}

resource "aws_route_table" "f5-volterra-vpc-external-rt" {
  vpc_id = aws_vpc.f5-volterra-vpc.id

  tags = {
    Name = "${var.prefix}-f5-volterra-external-rt"
  }
}
