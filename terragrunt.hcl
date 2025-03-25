remote_state {
  backend = "s3"
  generate = {
    path      = "backend.tf"
    if_exists = "overwrite"
  }
  config = {
    bucket = "kubeadm-konkas-tech"
    key    = "${path_relative_to_include()}/terraform.tfstate"
    region  = "${local.aws_region}"
  }
}

generate "provider" {
  path      = "provider.tf"
  if_exists = "overwrite"
  contents = <<EOF
provider "aws" {
  region  = "${local.aws_region}"
  profile = "${local.aws_profile}"
}
EOF
}

locals {
  aws_region  = "ap-south-1"
  aws_profile = "eks-siva.bapatlas.site"
}

generate "versions" {
  path      = "versions.tf"
  if_exists = "skip"
  contents = <<EOF
terraform {
  required_version = "= 1.9.8"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.92.0"
    }
  }
}
EOF
}