resource "aws_vpc" "VPC-Europe-Central" {
  cidr_block = var.vpc_cidr_block
  region     = var.aws_region

  enable_dns_support   = var.enable_dns_support
  enable_dns_hostnames = var.enable_dns_hostnames

  tags = merge(
    { Name = "${var.vpc_name}" },
    var.resource_tags,
  )
}



