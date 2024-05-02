resource "aws_instance" "frontend" {
  ami           = "ami-090252cbe067a9e58"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0db858af714d96d69"]
  tags = {
    name = "frontend"
  }
}



resource "aws_instance" "backend" {
  ami           = "ami-090252cbe067a9e58"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0db858af714d96d69"]
  tags = {
    name = "backend"
  }
}



resource "aws_instance" "mysql" {
  ami           = "ami-090252cbe067a9e58"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0db858af714d96d69"]
  tags = {
    name = "mysql"
  }
}

