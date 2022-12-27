data "terraform_remote_state" "tgw" {
  backend = "s3"
  config {
    bucket = "terraformforme"
    key    = "vpc/${var.ENV}/cart/terraform.tfstate"
    region = "us-east-1"
  }
}