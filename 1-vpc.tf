resource "aws_vpc" "VPC-Europe-Central" {
  cidr_block = "10.22.0.0/16"

  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name    = "VPC-Training"
    Service = "Training_Sandbox"
    Owner   = "Frodo"
    Planet  = "Arda"
  }
}



