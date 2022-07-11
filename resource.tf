#Criação e configuração da instância
resource "aws_instance" "instance" {
  count         = ?
  ami           = var.ami_ubuntu
  instance_type = var.instance_type
  subnet_id     = element(tolist(data.aws_subnet_ids.private_subnets.ids), count.index)

  tags = {
    Name = "terraform-${var.enviroment}"
  }
}