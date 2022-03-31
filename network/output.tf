output "subnet_id_P1" {
  value = aws_subnet.public_A.id
}

output "subnet_id_P2" {
  value = aws_subnet.public_B.id
}

output "subnet_id_Priv1" {
  value = aws_subnet.private_A.id
}

output "subnet_id_Priv2" {
  value = aws_subnet.private_B.id
}