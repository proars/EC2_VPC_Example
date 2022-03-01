module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.11.5"

  name = "my_vpc"
  cidr = "10.0.0.0/16"

  azs             = [var.azs]
  private_subnets = ["10.0.11.0/24"]
  public_subnets  = ["10.0.12.0/24"]

  #enable_nat_gateway = true


  tags = {
    Name        = "My_VPC"
    Description = "VPC"
  }
}