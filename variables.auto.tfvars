variable "prefix" {
  default = "tfe"
}

variable "availability_zone" {
  default = "us-west-2a"
}

variable "aws_region" {
  default = "us-west-2"
}

provider "aws" {
  version = "~> 2.0"
  region  = var.aws_region
}

variable "instance_type" {
  description = "type of EC2 instance to provision."
  default = "t2.micro"
}

variable "name" {
  description = "name to pass to name tag"
  default = "Larry Eichenbaum"
}

variable "owner" {
  description = "name to pass to owner tag"
  default = "larryebaum"
}

variable "ttl" {
  description = "ttl to pass to ttl tag"
  default = "4"
}

variable "se_region" {
  description = "SE region assigned"
  default = "public-sector"
}

variable "purpose" {
  description = "Purpose; Required if TTL = -1"
  default = "demo"
}

variable "terraform" {
  description = "Built by Terraform"
  default = true
}

variable "customer" {
  description = "Billable Customer"
  default = ""
}

variable "tfe_workspace" {
  description = "TFE Workspace"
  default = ""
}

variable "lifecycle_action" {
  description = "stop or terminate (default)"
  default = "terminate"
}