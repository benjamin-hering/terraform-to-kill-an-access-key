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

