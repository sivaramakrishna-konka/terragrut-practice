remote_state {
  backend = "s3"
  config = {
    bucket = "kubeadm-konkas-tech"
    key    = "${path_relative_to_include()}/terraform.tfstate"
    region = "ap-south-1"
  }
}

terraform {
  source = "./modules/ec2"
}