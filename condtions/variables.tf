# 1. command line
# 2. -var-file
# 3. terraform.tfvars
# 4. ENV variables


variable "ami_id" {
  type = string
  default = "ami-0b4f379183e5706b9"
}

variable "instance_name" {
  type = string
  default = "mongodb"
}