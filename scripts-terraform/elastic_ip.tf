resource "aws_eip" "frontend1" {
  instance = aws_instance.frontend1.id
}

resource "aws_eip" "frontend2" {
  instance = aws_instance.frontend2.id
}

resource "aws_eip" "backend" {
  instance = aws_instance.backend.id
}

resource "aws_eip" "balancer" {
  instance = aws_instance.balancer.id
}

resource "aws_eip" "nfs" {
  instance = aws_instance.nfs.id
}
