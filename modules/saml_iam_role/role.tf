resource "aws_iam_role" "this" {
  name                 = "${var.role_name}"
  max_session_duration = "3600"
  assume_role_policy   = "${data.aws_iam_policy_document.assume_role_saml.json}"
}
