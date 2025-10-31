# Deploy EC2 Instance from a given region. 


resource "aws_instance" "training-ec2" {
  ami                    = "ami-099981549d4358e9a"
  instance_type          = var.ec2_instance_type
  availability_zone      = local.zone1
  key_name               = var.key_name
  subnet_id              = aws_subnet.public_zone1.id
  vpc_security_group_ids = [aws_security_group.VPC-Europe-Central-SG.id]

  lifecycle {
    create_before_destroy = true
  }

  depends_on = [aws_vpc.VPC-Europe-Central, aws_subnet.public_zone1, aws_security_group.VPC-Europe-Central-SG]


  tags = var.resource_tags

}