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

variable "security_group_ids" {
  type = list(string)
}

variable "key_name" {
  type = string
}
