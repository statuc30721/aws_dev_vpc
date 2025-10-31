# Security group for Production Application Servers. 
resource "aws_security_group" "VPC-Europe-Central-SG" {
  name        = "vpc-sg01-servers"
  description = "Allow SSH and HTTP traffic to servers"
  vpc_id      = aws_vpc.VPC-Europe-Central.id

  ingress {
    description = "SSH_DEV"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "HTTP_DEV"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }


  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "vpc-sg01-training-servers"
    Service = "Training_Sandbox"
    Owner   = "Frodo"
    Planet  = "Arda"
  }
}