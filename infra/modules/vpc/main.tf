resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr

  tags = {
    name = var.vpc_tag_name
  }
}

resource "aws_subnet" "subnet" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = cidrsubnet(aws_vpc.main.cidr_block, 8, 1) ## takes 10.0.0.0/16 --> 10.0.1.0/24
  map_public_ip_on_launch = true
  availability_zone       = var.availability_zones
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = var.aws_internet_gateway_tag_name
  }
}

resource "aws_route_table" "rt" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = var.aws_route_table_cidr_block
    gateway_id = aws_internet_gateway.igw.id
  }
}

resource "aws_route_table_association" "subnet_route" {
  subnet_id      = aws_subnet.subnet.id
  route_table_id = aws_route_table.rt.id
}