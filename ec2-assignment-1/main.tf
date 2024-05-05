#Create the aws provide code. Find help at - https://registry.terraform.io/providers/hashicorp/aws/latest/docs
provider "aws" {
  region = "us-east-2"
}

#Create the EC2 instance resource code. Find help at - https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance
resource "aws_instance" "windows-server-instance" {
  ami = "ami-0c9890fb99eafa637"
  instance_type = "t2.micro"
}
