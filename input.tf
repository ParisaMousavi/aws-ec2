variable "additional_tags" {
  default = {}
  type    = map(string)
}

variable "subnet_id" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "vpc_security_group_ids" {
  type = list(string)
}