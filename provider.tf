locals {
  region = "us-east-1"
  name   = "faciosimple-cluster"
  vpc_cidr = "10.210.0.0/16"
  azs      = ["us-east-1a", "us-east-1b"]
  public_subnets  = ["10.210.1.0/24", "10.210.2.0/24"]
  private_subnets = ["10.210.3.0/24", "10.210.4.0/24"]
  intra_subnets   = ["10.210.5.0/24", "10.210.6.0/24"]
  tags = {
    Example = local.name
  }
}

provider "aws" {
  region = "us-east-1"
}
