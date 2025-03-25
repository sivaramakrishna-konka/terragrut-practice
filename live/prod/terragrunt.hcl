include "root" {
  path = find_in_parent_folders("terragrunt.hcl")
}

inputs = {
  instance_type = "t3.micro"
  instance_name = "prod-ec2"
}