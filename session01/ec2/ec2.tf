resource "aws_instance" "web" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.allow_all_traffic.id]

  tags = {
    Name = "HelloWorld"
  }
}

resource "aws_security_group" "allow_all_traffic" {
  name        = var.sg-name
  description = var.sg-description
#   vpc_id      = aws_vpc.main.id

  ingress{
    description = "allow all ports"
    from_port   = var.sg-ingress-inbound-from_port
    to_port     = 0
    protocol = "tcp"
    cidr_blocks = var.cidr_blocks
  }

  egress{
    from_port   = 0
    to_port     = 0
    protocol    = "-1"  # Allow all outbound traffic
    cidr_blocks = var.cidr_blocks
  }

  tags = {
    Name = "allow_all_traffic_jp"
  }
}