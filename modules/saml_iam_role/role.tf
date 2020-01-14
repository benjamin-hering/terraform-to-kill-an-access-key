resource "aws_iam_role" "this" {
  name                 = "${var.role_name}"
  max_session_duration = "${local.max_session_duration}"
  assume_role_policy   = "${data.aws_iam_policy_document.assume_role_saml.json}"
}
