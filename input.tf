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
