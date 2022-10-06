data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "this" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids
  network_interface {
    network_interface_id = aws_network_interface.this.id
    device_index         = 0
  }
  tags = merge(
    var.additional_tags,
    {
      created-by = "iac-tf"
    },
  )
}

resource "aws_network_interface" "this" {
  subnet_id = var.subnet_id
  tags = merge(
    var.additional_tags,
    {
      created-by = "iac-tf"
    },
  )
}
