# Security Group for EC2 Instance

resource "aws_security_group" "EC2_security" {
  name = "EC2_security"

  vpc_id = module.vpc.vpc_id
  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.Allowed_SSH_IP]
  }


  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]

  }

  tags = {
    Name = "EC2_security Group"
  }

  depends_on = [module.vpc.my_vpc]
}


