# Configure the AWS provider
provider "aws" {
  region = "eu-central-1"
}

variable "stack_name" {
  type    = string
  default = "awssamplevm1"
}
variable "public_ssh_key_name" {
  description = "Name of the public SSH key used to connect to the virtual guest"
  default     = "bptest00527052401"
}

# Create an EC2 instance
resource "aws_instance" "bp_sample_template" {
  ami           = "ami-00060fac2f8c42d30"
  instance_type = "t2.nano"
  key_name      = var.public_ssh_key_name

  tags = {
    Name = var.stack_name
  }
}
