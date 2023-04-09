terraform {
  backend "s3" {
    bucket = "terra-jenkins-code"
    key    = "DevOps"
    region = "us-east-1"
  }
}