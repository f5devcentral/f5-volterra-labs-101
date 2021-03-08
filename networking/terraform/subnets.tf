resource "aws_subnet" "f5-volterra-management-1" {
  vpc_id                  = aws_vpc.f5-volterra-vpc.id
  cidr_block              = "10.0.0.0/24"
  map_public_ip_on_launch = "true"
  availability_zone       = "${var.aws_region}${var.az1}"

  tags = {
    Name = "${var.prefix}-f5-volterra-management-1"
  }
}

resource "aws_subnet" "f5-volterra-management-2" {
  vpc_id                  = aws_vpc.f5-volterra-vpc.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = "true"
  availability_zone       = "${var.aws_region}${var.az2}"

  tags = {
    Name = "${var.prefix}-f5-volterra-management-2"
  }
}

resource "aws_subnet" "f5-volterra-internal-1" {
  vpc_id                  = aws_vpc.f5-volterra-vpc.id
  cidr_block              = "10.0.3.0/24"
  map_public_ip_on_launch = "false"
  availability_zone       = "${var.aws_region}${var.az1}"

  tags = {
    Name = "${var.prefix}-f5-volterra-internal-1"
  }
}

resource "aws_subnet" "f5-volterra-internal-2" {
  vpc_id                  = aws_vpc.f5-volterra-vpc.id
  cidr_block              = "10.0.4.0/24"
  map_public_ip_on_launch = "false"
  availability_zone       = "${var.aws_region}${var.az2}"

  tags = {
    Name = "${var.prefix}-f5-volterra-internal-2"
  }
}

resource "aws_subnet" "f5-volterra-internal-3" {
  vpc_id                  = aws_vpc.f5-volterra-vpc.id
  cidr_block              = "10.0.5.0/24"
  map_public_ip_on_launch = "false"
  availability_zone       = "${var.aws_region}${var.az1}"

  tags = {
    Name = "${var.prefix}-f5-volterra-internal-3"
  }
}

resource "aws_subnet" "f5-volterra-internal-4" {
  vpc_id                  = aws_vpc.f5-volterra-vpc.id
  cidr_block              = "10.0.6.0/24"
  map_public_ip_on_launch = "false"
  availability_zone       = "${var.aws_region}${var.az2}"

  tags = {
    Name = "${var.prefix}-f5-volterra-internal-4"
  }
}


