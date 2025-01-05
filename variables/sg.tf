resource "aws_security_group" "allow_all" {
  name        = var.sg-name
  description = var.sg-description
#   vpc_id      = "${aws_vpc.main.id}"

  ingress {
    description = "allowing all traffic as ingress"
    from_port   = var.ingress_port
    to_port     = 0
    protocol    = "tcp"
    cidr_blocks = var.cidr_blocks
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = var.sg_tag
}