resource "aws_instance" "frontend1" {
  ami           = var.ami_ubuntu
  instance_type = var.instance_type
  key_name      = var.key_name

  security_groups = [
    aws_security_group.frontend.name
  ]

  tags = {
    Name = "frontend-1"
  }
}

resource "aws_instance" "frontend2" {
  ami           = var.ami_ubuntu
  instance_type = var.instance_type
  key_name      = var.key_name

  security_groups = [
    aws_security_group.frontend.name
  ]

  tags = {
    Name = "frontend-2"
  }
}

resource "aws_instance" "backend" {
  ami           = var.ami_ubuntu
  instance_type = var.instance_type
  key_name      = var.key_name

  security_groups = [
    aws_security_group.backend.name
  ]

  tags = {
    Name = "backend"
  }
}

resource "aws_instance" "nfs" {
  ami           = var.ami_ubuntu
  instance_type = var.instance_type
  key_name      = var.key_name

  security_groups = [
    aws_security_group.nfs.name
  ]

  tags = {
    Name = "nfs"
  }
}

resource "aws_instance" "balancer" {
  ami           = var.ami_balancer
  instance_type = var.instance_type
  key_name      = var.key_name

  security_groups = [
    aws_security_group.balancer.name
  ]

  tags = {
    Name = "balancer"
  }
}
