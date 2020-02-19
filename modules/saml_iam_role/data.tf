data "aws_caller_identity" "current" {}

data "aws_iam_policy_document" "assume_role_saml" {
  statement {
    actions = ["sts:AssumeRoleWithSAML"]

    condition {
      test     = "StringEquals"
      values   = ["https://signin.aws.amazon.com/saml"]
      variable = "SAML:aud"
    }

    principals {
      identifiers = ["${var.federated_principal_arn}"]
      type        = "Federated"
    }
  }
}

data "aws_iam_policy_document" "iam_pass_own_role" {
  statement {
    effect = "Allow"

    actions = ["iam:PassRole"]

    resources = [
      "arn:aws:iam::${local.account_number}:role/${var.role_name}",
      "arn:aws:iam::${local.account_number}:instance-profile/${var.role_name}*",
    ]
  }

  statement {
    effect = "Allow"

    actions = ["iam:ListInstanceProfiles"]

    resources = ["arn:aws:iam::${local.account_number}:instance-profile/*"]
  }
}
