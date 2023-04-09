// ec2 variables
variable "region_name" {
  type    = string
  default = "us-east-1"
}
variable "instance_type" {
  type        = string
  description = "This is the instance type"
  default     = "t2.nano"

}

//vpc variables
variable "vpc_name" {
  default = "DevOps vpc"

}
variable "env" {
  default = "dev"

}

variable "name" {
  default = "dev-jenkins-server"

}