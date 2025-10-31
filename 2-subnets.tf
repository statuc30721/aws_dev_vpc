#These are   for  public

resource "aws_subnet" "public_zone1" {
  vpc_id                  = aws_vpc.VPC-Europe-Central.id
  cidr_block              = var.public_subnet_cidr_blocks.public_zone1
  availability_zone       = local.zone1
  map_public_ip_on_launch = var.map_public_ip_on_launch

  tags = merge(
    { Name = "public-${local.zone1}" },
    var.resource_tags,
  )
}


#these are for private
resource "aws_subnet" "private_zone1" {
  vpc_id            = aws_vpc.VPC-Europe-Central.id
  cidr_block        = var.private_subnet_cidr_blocks.private_zone1
  availability_zone = local.zone1

  tags = merge(
    { Name = "private-${local.zone1}" },
    var.resource_tags,
  )
}