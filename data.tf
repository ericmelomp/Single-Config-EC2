#Adquirindo uma subnet privada/pública da minha VPC
data "aws_subnet_ids" "private_subnets" {
  vpc_id = "vpc-?"

  filter {
    name = "tag:?"
    values = ["?"]
  }
}