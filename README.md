# EC2\_VPC\_Example

This is a Terraform basic example of VPC with EC2.
Code will create VPC, 1 EC2 instance (t2.micro) and Security Group with opened SSH port in us-west-2 by default.

<br>
Don't forget change variables in <b>variables.tf</b> file: Region, AZS, AMI, and "Allowed\_SSH\_IP"

terraform init

terraform plan

terraform apply
