resource "local_file" "aws_config" {
  filename = "example_aws_config"
  content = <<EOT
[default]
region=us-east-1

[okta]
aws_saml_url=<insert your embed URL here>

[profile ${module.admin_saml_user.role_name}]
role_arn = ${module.admin_saml_user.role_arn}
  EOT
}