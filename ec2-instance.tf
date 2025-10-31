resource "aws_instance" "training-ec2" {
  ami                    = "ami-099981549d4358e9a"
  instance_type          = "t3.micro"
  availability_zone      = "eu-central-1"
  key_name               = "eu-west-training-keypair"
  subnet_id              = aws_subnet.public-eu-central-1a.id
  vpc_security_group_ids = [aws_security_group.VPC-Europe-Central-SG.id]


  tags = {
    Name = "training-ec2"
  }

}