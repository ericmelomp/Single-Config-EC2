variable "enviroment" {
  type = string
  default = "?"
}

#Tipo da instância
variable "instance_type" {
  type = string
  default = "t2.micro"
}

#Imagem da instância
variable "ami_ubuntu" {
  type = string
  default = "?"
}