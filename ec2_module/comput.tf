

provider "aws" {
  region = var.regionec2
}

resource "aws_instance" "module1" {

    

    ami = var.mod_instance_parameters["instance_ami"]
    instance_type = var.mod_instance_parameters["instance_type"]
    # tags = {
    #     Name = var.mod_instance_parameters["name"]
    # }
    key_name = var.mod_instance_parameters["key_name"]   
}

