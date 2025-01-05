# 1. command line
# 2. -var-file
# 3. terraform.tfvars
# 4. ENV variables


variable "ami_id" {
  type = string
  default = "ami-0b4f379183e5706b9"
}

variable "instance_type" {
  type = string
  default = "t2.micro" # we have assigned same variable in terraform.tfvars file, so it will fetch from there bcoz of it's priority principle
}

variable "ec2_tags" {
  type = map
  default = {
    Name        = "Hello world"
    Project     = "Roboshop"
    Component   = "DEB"
    terraform   = "true"
  }
}

variable "sg-name" {
  type = string
  default = "allow_all_traffic_aws"
}

variable "sg-description" {
  type = string
  default = "Allow TLS inbound traffic"
}

variable "ingress_port" {
  type = number
  default = 0
}

variable "cidr_blocks" {
  type = list
  default = ["0.0.0.0/0"]
}