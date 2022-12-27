data "terraform_remote_state" "tgw" {
  backend = "s3"
  config = {
    bucket = "terraformforme"
    key    = "transit-tg/${var.ENV}/terraform.tfstate"
    region = "us-east-1"
  }
}