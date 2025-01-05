resource "aws_instance" "web" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.allow_all_traffic.id]

  tags = {
    Name = "HelloWorld"
  }
}


resource "aws_security_group" "allow_all_traffic" {  #this is for terraform ref
  name        = var.sg-name #this is for to named in aws
  description = var.sg-description
  # vpc_id      = aws_vpc.main.id

  ingress{
  from_port         = var.inbound-from_port
  to_port           = 65535
  protocol          = "tcp"
  cidr_blocks       = var.cidr_blocks
  }

  egress{
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 0
  }

  tags = {
    Name = "allow_all_traffic_aws"
  }
}