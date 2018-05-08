# vars
variable "env" {
  default = ""
}
variable "region" {
}
variable "billing_account" {
}
variable "org_id" {
}
variable "credentials_file_path" {
  default = ""
}
variable "domain" {
}

# resources
module "project" {
  source          = "../../modules/project"
  name            = "base-project-${var.env}"
  region          = "${var.region}"
  billing_account = "${var.billing_account}"
  org_id          = "${var.org_id}"
#  credentials_file_path = "${var.credentials_file_path}"
  folder = "DEV_projects/"
  domain = "${var.domain}"
}