# terraform-to-kill-an-access-key
Public Terraform Examples for How to Kill an Access Key

If you have a SAML provider setup for AWS, just drop in your own `metadata.xml` into `modules/okta_saml_idp/metadata.xml`, and run `terraform plan` (or `terraform apply` if you're feeling daring!) with appropriate AWS permissions inside the `example` folder to see:

* setting up a SAML IdP
* setting up a user for Okta API integration
* setting up a user assumable from SAML

The modules invoked in the example are in the modules folder and designed to be re-usable with minimal adjustmment to import the code directly.

Code is based off Okta as the root IdP, but not much more than the names need to be updated for any other SAML identity provider. If you have the appropriate `metadata.xml` file from your identity provider, the rest works smoothly.
