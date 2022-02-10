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

    vpc_security_group_ids = ["sg-08148c3ec54bd98cf"]
}

resource "aws_security_group" "acesso-ssh" {
  name = "acesso-ssh"
  description = "acesso-ssh"

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["168.181.124.128/32"]
  }

  tags = {
    Name = "ssh"
  }
}
