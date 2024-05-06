provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "tag-test" {
  ami           = "ami-07caf09b362be10b8"
  instance_type = "t2.micro"
  tags = {
    Name        = "Tags Test"
    Environment = "Learning Terraform"
    Owner       = "42musta"
    Project     = "Terraform-101 Lab 4"
  }
}

resource "aws_ebs_volume" "example" {
  availability_zone = "us-east-1b"
  size              = 40
}

resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.example.id
  instance_id = aws_instance.tag-test.id
}