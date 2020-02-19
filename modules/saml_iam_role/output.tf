output "role_name" {
  value = var.role_name
}

output "role_arn" {
  value = aws_iam_role.this.arn
}