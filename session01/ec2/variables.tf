variable "sg-name" {
  type = string
  default = "allow_all_traffic_praveen"
}

variable "sg-description" {
  type = string
  default = "Allow TLS inbound traffic and all outbound traffic"
}

variable "sg-ingress-inbound-from_port" {
  type = number
  default = 0
}

variable "cidr_blocks" {
  type = list
  default = ["0.0.0.0/0"]
}