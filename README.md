# EC2\_VPC\_Example

This is a Terraform basic example of VPC with EC2.
Code will create VPC, 1 EC2 instance (t2.micro) and Security Group with opened SSH port in us-west-2 by default.

<br>
Change variables in variables.tf file: Region, AMI, and "Allowed\_SSH\_IP"

 terraform init
 terraform plan
 terraform apply