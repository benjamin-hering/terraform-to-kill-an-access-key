resource "aws_iam_user" "okta_api" {
  name = "okta-api"
}

resource "aws_iam_user_policy" "okta_api" {
  user   = aws_iam_user.okta_api.name
  policy = data.aws_iam_policy_document.okta_api_user_policy.json
}
