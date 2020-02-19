resource "aws_iam_role" "this" {
  name                 = var.role_name
  max_session_duration = local.max_session_duration
  assume_role_policy   = data.aws_iam_policy_document.assume_role_saml.json
}

resource "aws_iam_role_policy_attachment" "iam_policies_to_attach" {
  count = length(var.policies_to_attach)
  role = aws_iam_role.this.name
  policy_arn = format("arn:aws:iam::aws:policy/%s", element(var.policies_to_attach, count.index))
}