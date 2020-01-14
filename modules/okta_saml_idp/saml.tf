resource "aws_iam_saml_provider" "this" {
  name                   = "okta-saml-idp"
  saml_metadata_document = "${file("${path.module}/metadata.xml")}"
}
