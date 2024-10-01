#provider "aws" {
#  region = "us-east-2"
#}

#VPC
resource "aws_vpc" "rs_school_vpc" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = var.vpc_name
  }
}


#Public subnets
resource "aws_subnet" "rs_school_public_subnets" {
  count             = length(var.cidr_public_subnets)
  vpc_id            = aws_vpc.rs_school_vpc.id
  cidr_block        = element(var.cidr_public_subnets, count.index)
  availability_zone = element(var.availability_zones, count.index)
  tags = {
    Name = "RS_School_public_subnet_${count.index + 1}"
  }
}

#Private subnets
resource "aws_subnet" "rs_school_private_subnets" {
  count             = length(var.cidr_private_subnets)
  vpc_id            = aws_vpc.rs_school_vpc.id
  cidr_block        = element(var.cidr_private_subnets, count.index)
  availability_zone = element(var.availability_zones, count.index)
  tags = {
    Name = "RS_School_private_subnet_${count.index + 1}"
  }
}


#Internet Gateway
resource "aws_internet_gateway" "rs_school_internet_gateway" {
  vpc_id = aws_vpc.rs_school_vpc.id
  tags = {
    Name = var.ig_name
  }
}


#Public Route Table
resource "aws_route_table" "rs_school_public_route_table" {
  vpc_id = aws_vpc.rs_school_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.rs_school_internet_gateway.id
  }
  tags = {
    Name = var.public_route_table_name
  }
}

# Private Route Table
resource "aws_route_table" "rs_school_private_route_table" {
	vpc_id = aws_vpc.rs_school_vpc.id
	tags = {
		Name = var.private_route_table_name
	}
}

#Public Route Table and Public Subnet Association
resource "aws_route_table_association" "Public_Subnet_Route_Table_Association" {
  count          = length(aws_subnet.rs_school_public_subnets)
  subnet_id      = aws_subnet.rs_school_public_subnets[count.index].id
  route_table_id = aws_route_table.rs_school_public_route_table.id
}

#Private Route Table and Private Subnet Association
resource "aws_route_table_association" "Private_Subnet_Route_Table_Association" {
  count          = length(aws_subnet.rs_school_private_subnets)
  subnet_id      = aws_subnet.rs_school_private_subnets[count.index].id
  route_table_id = aws_route_table.rs_school_private_route_table.id
}