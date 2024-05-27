# Configure the AWS provider
provider "aws" {
  region = "us-east-1"
}

# Create an EC2 instance
resource "aws_instance" "bp-template270524001" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.nano"
  key_name      = "bptest00527052401"

  tags = {
    Name = "bp-template270524001"
  }
}
