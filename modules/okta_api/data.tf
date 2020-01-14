data "aws_iam_policy_document" "okta_api_user_policy" {
  statement {
    actions = [
      "iam:GetAccountSummary",
      "iam:ListRoles",
      "iam:ListAccountAliases",
      "iam:GetUser",
      "sts:AssumeRole",
    ]

    resources = ["*"]
  }
}
