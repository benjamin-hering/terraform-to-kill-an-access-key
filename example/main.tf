module "okta_saml_idp" {
  source = "../modules/okta_saml_idp"
}

module "okta_api_user" {
  source = "../modules/okta_api"
}

module "admin_saml_user" {
  source = "../modules/saml_iam_role"
  federated_principal_arn = module.okta_saml_idp.saml_provider_arn
  role_name = "kill-an-access-key-admin"
  policies_to_attach = ["AdministratorAccess"]
}

