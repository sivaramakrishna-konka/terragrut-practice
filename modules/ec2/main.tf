resource "aws_instance" "example" {
  ami           = var.ami_id
  key_name = var.key_name
  instance_type = var.instance_type
  tags = {
    Name = var.instance_name
    Env  = var.env
  }
}