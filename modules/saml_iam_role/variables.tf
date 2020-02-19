variable "role_name" {
  description = "Role Name"
  default     = ""
}

variable "federated_principal_arn" {
  description = "SAML ARN from provider for principal trust"
  default     = ""
}
variable "policies_to_attach" {
  description = "List of policies to attach to this user. This example Terraform only supports AWS managed policies"
  type = list(string)
  default = []
}
