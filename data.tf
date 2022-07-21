#Adquirindo uma subnet privada/pública da minha VPC
data "aws_subnet_ids" "private_subnets" {
  vpc_id = "vpc-?"
#This filter goes according to the tags (key=type; value=private) in the subnets of my vpc.
  filter {
    name = "tag:type"
    values = ["private"]
  }
}