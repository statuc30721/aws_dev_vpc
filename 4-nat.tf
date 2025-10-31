resource "aws_eip" "nat" {
  #vpc = true
  domain = "vpc"

  tags = {
    Name = "eip-nat-vpc-training"
  }
}

resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.private-eu-central-1a.id

  tags = {
    Name = "nat-vpc-training"
  }

  depends_on = [aws_internet_gateway.igw]
}