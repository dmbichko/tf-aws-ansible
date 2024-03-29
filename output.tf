output "Worker_instance_public_ips" {
  value = aws_instance.Worker[*].public_ip
}

output "Worker_instance_private_ips" {
  value = aws_instance.Worker[*].private_ip
}

output "Worker_instance_ids" {
  value = aws_instance.Worker[*].id
}

output "Master_instance_public_ip" {
  value = aws_instance.Master.public_ip
}

output "Master_instance_private_ip" {
  value = aws_instance.Master.private_ip
}

output "Master_instance_id" {
  value = aws_instance.Master.id
}

resource "local_file" "private_key_output" {
  sensitive_content = tls_private_key.tls-aws-key.private_key_pem
  filename          = "${path.module}/${var.key_name}.pem"
}