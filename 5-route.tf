resource "aws_route_table" "public-VPC-Europe-Central" {
  vpc_id = aws_vpc.VPC-Europe-Central.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id

  }
  tags = {
    Name = "public-VPC-Europe-Central-RT"
  }
}

resource "aws_route_table_association" "public-eu-central-1" {
  subnet_id      = aws_subnet.public-eu-central-1a.id
  route_table_id = aws_route_table.public-VPC-Europe-Central.id
}


resource "aws_route_table" "private-VPC-Europe-Central" {
  vpc_id = aws_vpc.VPC-Europe-Central.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat.id
  }


  tags = {
    Name = "private-VPC-Europe-Central-RT"
  }
}


resource "aws_route_table_association" "private-eu-central-1" {
  subnet_id      = aws_subnet.private-eu-central-1a.id
  route_table_id = aws_route_table.private-VPC-Europe-Central.id
}

