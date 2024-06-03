# Configure the AWS provider
provider "aws" {
  region = "us-east-1"
}

variable "dialog_stack_name" {
  type    = string
  default = "awssamplevm"
}
variable "public_ssh_key_name" {
  description = "Name of the public SSH key used to connect to the virtual guest"
  default     = "bptest00527052401"
}

# Create an EC2 instance
resource "aws_instance" "bp_sample_template" {
  ami           = "ami-03e9149278a6f457c"
  instance_type = "t2.nano"
  key_name      = var.public_ssh_key_name

  tags = {
    Name = var.dialog_stack_name
  }
}
