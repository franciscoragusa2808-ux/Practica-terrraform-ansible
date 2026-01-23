output "frontend1_ip" {
  value = aws_eip.frontend1.public_ip
}

output "frontend2_ip" {
  value = aws_eip.frontend2.public_ip
}

output "backend_ip" {
  value = aws_eip.backend.public_ip
}

output "nfs_ip" {
  value = aws_eip.nfs.public_ip
}

output "balancer_ip" {
  value = aws_eip.balancer.public_ip
}
