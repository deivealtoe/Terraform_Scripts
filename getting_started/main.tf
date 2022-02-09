provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "dev" {
    count = 3
    ami = "ami-033b95fb8079dc481"
    instance_type = "t2.micro"
    key_name = "terraform-aws-key"
    tags = {
        Name = "dev${count.index}"
    }
}