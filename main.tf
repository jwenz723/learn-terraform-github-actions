terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }

  backend "remote" {
    organization = "jeffwenzbauer"

    workspaces {
      name = "gh-actions-demo"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}

# resource "aws_ssm_parameter" "jeff" {
#   name  = "/jeffs/cool/dev"
#   type  = "String"
#   value = "something"
# }

# output "param-value" {
#   value = aws_ssm_parameter.jeff.value
# }
