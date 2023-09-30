variable "mod_instance_parameters" {
    type = object({
      name = string
      instance_ami = string
      instance_type = string
      key_name = string
    })
}

variable "regionec2" {
  type = string
}