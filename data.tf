#Adquirindo uma subnet privada/pública da minha VPC
data "aws_subnet_ids" "private_subnets" {
  vpc_id = "vpc-07846064f27eb2140"

  filter {
    name = "tag:type"
    values = ["private"]
  }
}