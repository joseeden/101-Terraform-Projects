resource "aws_instance" "lab06-mongo" {
  ami                    = var.instance_ami
  instance_type          = var.instance_type
  key_name               = var.key_name
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.sg_id]

  /*
  user_data = << EOF
  #! /bin/bash
  sudo apt-get update
  sudo apt-get install -y nginx
  sudo systemctl start nginx
  sudo systemctl enable nginx
  echo "<h1>CloudAcademy 2021</h1>" | sudo tee /var/www/html/index.html
	EOF
  */

  user_data = filebase64("${path.module}/install.sh")

  tags = {
    Name  = "lab06-mongo"
  }
}