resource "aws_subnet" "public_A" {
  vpc_id     = aws_vpc.ITI.id
  cidr_block = var.pub_subnet1_cidr
  map_public_ip_on_launch = "true" 
  availability_zone = var.availability_zone_A
  tags = {
    Name = "public_A"
  }
}

resource "aws_subnet" "public_B" {
  vpc_id     = aws_vpc.ITI.id
  cidr_block = var.pub_subnet2_cidr
  map_public_ip_on_launch = true 
  availability_zone = var.availability_zone_B
  tags = {
    Name = "public_B"
  }
}

resource "aws_subnet" "private_A" {
  vpc_id     = aws_vpc.ITI.id
  cidr_block = var.private_subnet1_cidr
  availability_zone = var.availability_zone_A
  tags = {
    Name = "private_A"
  }
}

resource "aws_subnet" "private_B" {
  vpc_id     = aws_vpc.ITI.id
  cidr_block = var.private_subnet2_cidr
  availability_zone = var.availability_zone_B
  tags = {
    Name = "private_B"
  }
}

