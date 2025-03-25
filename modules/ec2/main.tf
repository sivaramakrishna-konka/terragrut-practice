provider "aws" {
  region = "ap-south-1"
  profile= "eks-siva.bapatlas.site"
}

resource "aws_instance" "example" {
  ami           = "ami-05c179eced2eb9b5b"
  instance_type = var.instance_type
  tags = {
    Name = var.instance_name
  }
}