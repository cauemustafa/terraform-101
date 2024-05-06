#Create your provider configuration
provider "aws" {
  region = "us-east-1"
}

#Create an EC2 Instance with Tags
resource "aws_instance" "assignment-2" { 
  ami = "ami-07caf09b362be10b8"
  instance_type = "t2.micro"
  tags = {
    Name = "assigment-2"
    environment = "learning"
    purpose = "testing"
    ami_description = "Amazon Linux 2023 AMI 2023.4.20240429.0 x86_64 HVM kernel-6.1"
    ami_id = "ami-07caf09b362be10b8"
  }
}

