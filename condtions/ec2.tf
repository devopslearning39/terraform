resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_name == "mongodb" ? "t3.micro" : "t2.micro"
}


# condition ? true_val : false_val
