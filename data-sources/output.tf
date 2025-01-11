output "centos_ami_id" {
  value = data.aws_ami.centos.id
}

output "amazon_linux2_ami_id" {
  value = data.aws_ami.amazon_linux2.id
}

output "default_vpc_info" {
  value = data.aws_vpc.default.id
}