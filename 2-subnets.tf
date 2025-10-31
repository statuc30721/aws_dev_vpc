#These are   for  public

resource "aws_subnet" "public-eu-central-1a" {
  vpc_id                  = aws_vpc.VPC-Europe-Central.id
  cidr_block              = "10.22.1.0/24"
  availability_zone       = "eu-central-1a"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-eu-central-1a"
    Service = "Training_Sandbox"
    Owner   = "Frodo"
    Planet  = "Arda"
  }
}




#these are for private
resource "aws_subnet" "private-eu-central-1a" {
  vpc_id            = aws_vpc.VPC-Europe-Central.id
  cidr_block        = "10.22.11.0/24"
  availability_zone = "eu-central-1a"

  tags = {
    Name    = "private-eu-central-1a"
    Service = "Training_Sandbox"
    Owner   = "Frodo"
    Planet  = "Arda"
  }
}