#Provider Block
provider "aws" {
    region = "us-east-2"
}

#EC2 Block w/tags
resource "aws_instance" "tags-test" {
    ami = "ami-0ddda618e961f2270"
    instance_type = "t2.micro"
    tags = {
        Name = "Tags Test"
        environment = "Dev"
        owner = "lopes-compliance"
        purpose = "Testing"
        team = "DevOps"
    }
}