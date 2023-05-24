resource "aws_vpc" "my-vpc1" {
    cidr_block = var.vpc-cidr
    tags = {
        "name" = "my-vpc1"
    }
  
}

resource "aws_subnet" "public-subnet" {
    vpc_id = aws_vpc.my-vpc1
    cidr_block = var.public-cidr
    availability_zone = var.pub-availability_zone
    map_public_ip_on_launch = true
    tags = {
        "name" = "public-subnet"
    }
}

resource "aws_subnet" "private-subne" {
    vpc_id = aws_vpc.my-vpc1
    cidr_block = var.pri-cidr
    availability_zone = var.pri-availability_zone
    tags = {
      "value" = "private-subnet"
    } 
}

resource "aws_internet_gateway" "igw" {
    vpc_id = aws_vpc.my-vpc1  
}

resource "aws_default_route_table" "default-rt" {
    default_route_table_id = aws_default_route_table.id
    route = {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.igw.id
    }
  
}
  