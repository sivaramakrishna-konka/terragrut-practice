include {
  path = find_in_parent_folders()
}

terraform {
  source = "../../modules//ec2"
}

locals {
  aws_region  = "ap-south-1"
  aws_profile = "eks-siva.bapatlas.site"
}

inputs = {
  ami_id         = "ami-05c179eced2eb9b5b"
  instance_type  = "t3.micro"
  instance_name  = "prod-instance"
  env            = "prod"
  key_name       = "siva"
}