resource "aws_instance" "frontend" {
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.security_groups
  tags = {
    name = "frontend"
  }
}



resource "aws_instance" "backend" {
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.security_groups
  tags = {
    name = "backend"
  }
}



resource "aws_instance" "mysql" {
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.security_groups
  tags = {
    name = "mysql"
  }
}

variable "ami" {
  default = "ami-090252cbe067a9e58"
}

variable "instance_type" {
  default = "t3.micro"
}

variable "security_groups" {
  default = ["sg-0db858af714d96d69"]
}
