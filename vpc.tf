module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.11.5"

  name = "vpc_db"
  cidr = "10.0.0.0/16"

  azs             = ["us-west-2a"]
  private_subnets = ["10.0.11.0/24"]
  public_subnets  = ["10.0.12.0/24"]

  #enable_nat_gateway = true


  tags = {
    Name        = "VPC for WP and RDB"
    Description = "VPC"
  }
}