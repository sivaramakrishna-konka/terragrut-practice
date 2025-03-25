include {
  path = find_in_parent_folders()
}

terraform {
  source = "../../modules//ec2"
}

inputs = {
  aws_region  = "ap-south-1"
  aws_profile = "eks-siva.bapatlas.site"
  ami_id         = "ami-0e35ddab05955cf57"
  instance_type  = "t2.micro"
  instance_name  = "dev-instance"
  env            = "dev"
  key_name       = "siva"
}