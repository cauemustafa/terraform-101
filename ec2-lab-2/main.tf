provider "aws" {
    region = "us-east-2"
}

#Create an EC2 Resource Block
resource "aws_instance" "example" {
    ami = "ami-0ddda618e961f2270"
  instance_type = "t2.micro"
}
