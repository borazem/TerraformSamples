data "aws_ami" "ubuntu" {
  most_recent = true
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }
  owners = ["099720109477"]
}

variable "aws_image_size" {
  default = "t2.small"
}

resource "aws_instance" "my-instance1" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.aws_image_size
  tags          = { Name = "my-instance1" }
}
