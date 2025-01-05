resource "aws_instance" "web" {
  count = 11
  ami           = var.ami_id
  instance_type = "t3.micro"

  tags = {
    Name = var.ec2_instance[count.index]
  }
}