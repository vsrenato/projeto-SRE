output "ec2_instance_id" {
  description = "ID da instância EC2 criada"
  value       = aws_instance.web.id
}

output "cloudwatch_log_group" {
  description = "Nome do grupo de logs do CloudWatch"
  value       = aws_cloudwatch_log_group.app_logs.name
}