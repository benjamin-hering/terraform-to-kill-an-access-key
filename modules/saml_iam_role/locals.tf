locals {
  max_session_duration = "3600"
  account_number       = "${data.aws_caller_identity.current.account_id}"
}
