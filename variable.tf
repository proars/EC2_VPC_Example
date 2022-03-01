variable "region" {
  default = "us-west-2"
}

variable "azs" {
  default = "us-west-2a"
}

variable "ami" {
  default = "ami-0ca05c6eaa4ac40e0"
}

variable "key_name" {
  default = "dev"
}


variable "Allowed_SSH_IP" {
  default = "0.0.0.0/0"
}

variable "inst_type" {
  default = "t2.micro"
}


