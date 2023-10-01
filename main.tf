terraform {

  # cloud {
  #   organization = "MILUNADEV"
  #   workspaces {
  #     name = "cliwork"
  #   }
  # }



  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5"
    }
  }
}

variable "region" {
  type = string
}

provider "aws" {
  region = "us-east-2"
}

variable "parent_instance" {
    type = object({
      name = string
      instance_ami = string
      instance_type = string
      key_name = string
    })
    default = {
      name = "Modi"
      instance_ami  = "ami-024e6efaf93d85776"
      instance_type = "t2.micro"
      key_name = "SSHVMs"
    }
}

module "instancia1" {
  source = "./ec2_module"

  #pasando variables 
  regionec2 = var.region
  mod_instance_parameters = var.parent_instance
  
}



