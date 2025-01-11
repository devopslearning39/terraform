variable "ami_id" {
  type = string
  default = "ami-0b4f379183e5706b9"
}

variable "isProd" {
  type = bool
  default = false
}

variable "instance_names" {
  type = list
  default = ["mongodb","redis","mysql","rabbitmq","catalogue","user","cart","shipping","payment","dispatch","web"]
}

variable "zone_id" {
  type = string
  default = "Z00383512RFXDS653HVHZ"
}

variable "domain_name" {
  type = string
  default = "jella.fun"
}