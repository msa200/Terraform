resource "aws_route_table" "public_route1" {
  vpc_id = aws_vpc.ITI.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.ITI.id
  }

  tags = {
    Name = "public_route1"
  }
}

resource "aws_route_table" "public_route2" {
  vpc_id = aws_vpc.ITI.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.ITI.id
  }

  tags = {
    Name = "public_route2"
  }
}

resource "aws_route_table" "private_route1" {
  vpc_id = aws_vpc.ITI.id

  tags = {
    Name = "private_route1"
  }
}


resource "aws_route_table" "private_route2" {
  vpc_id = aws_vpc.ITI.id

  tags = {
    Name = "private_route2"
  }
}


resource "aws_route_table_association" "association_A" {
  subnet_id      = aws_subnet.public_A.id
  route_table_id = aws_route_table.public_route1.id
}

resource "aws_route_table_association" "association_B" {
  subnet_id      = aws_subnet.public_B.id
  route_table_id = aws_route_table.public_route2.id
}

resource "aws_route_table_association" "association_PA" {
  subnet_id      = aws_subnet.private_A.id
  route_table_id = aws_route_table.private_route1.id
}

resource "aws_route_table_association" "association_PB" {
  subnet_id      = aws_subnet.private_B.id
  route_table_id = aws_route_table.private_route2.id
}

