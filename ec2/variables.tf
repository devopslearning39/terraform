variable "sg-name" {
  type = string
  default = "allow_all_traffic_aws_jp"
}

variable "sg-description" {
  type = string
  default = "Allow TLS inbound traffic and all outbound traffic"
}

variable "inbound-from_port" {
  type = number
  default = 0
}

variable "cidr_blocks" {
  type = list
  default = ["0.0.0.0/0"]
}