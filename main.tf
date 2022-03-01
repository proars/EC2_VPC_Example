####################################
##  Basic VPC with EC2 Example
##
####################################

provider "aws" {
  region = var.region
}


resource "aws_instance" "Server" {
  instance_type = var.inst_type
  ami           = var.ami
  key_name      = var.key_name

  subnet_id = module.vpc.public_subnets[0]

  vpc_security_group_ids = [aws_security_group.EC2_security.id]

  tags = {
    "Name" = "EC2 Server"
  }

  depends_on = [
    module.vpc.my_vpc
  ]

}




