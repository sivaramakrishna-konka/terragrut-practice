include "root" {
  path = find_in_parent_folders("terragrunt.hcl")
}

inputs = {
  instance_type = "t2.micro"
  instance_name = "dev-ec2"
}