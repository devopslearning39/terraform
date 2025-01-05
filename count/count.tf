resource "aws_instance" "web" {
#   count = 11
  count = length(var.instances_names)
  ami           = var.ami_id
  instance_type = "t3.micro"

  tags = {
    Name = var.instances_names[count.index]
  }
}

resource "aws_route53_record" "www" {
#   count = 11
  count = length(var.instances_names)
  zone_id = var.zone_id
  name    = "${var.instances_names[count.index]}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = [var.instances_names[count.index] == "web" ? aws_instance.web[count.index].public_ip : aws_instance.web[count.index].private_ip]
}