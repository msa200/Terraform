resource "aws_internet_gateway" "ITI" {
  vpc_id = aws_vpc.ITI.id

  tags = {
    Name = "IGW-1"
  }
}