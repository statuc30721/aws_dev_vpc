# Internet Gateway for VPC.

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.VPC-Europe-Central.id

  tags = {
    Name    = "VPC-Training_IG"
    Service = "Training_Sandbox"
    Owner   = "Frodo"
    Planet  = "Arda"
  }
}
