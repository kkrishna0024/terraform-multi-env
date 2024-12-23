variable "instance_names" {
    type = map
    default = {
       mongodb = "t3.small"
       redis = "t3.small"
       rabitmq = "t2.small"
       mysql = "t3.small"
       shipping = "t3.small"
       payment = "t2.small"
       dispatch = "t2.small"
       web = "t2.small"
       user = "t2.small"
       cart = "t2.small"
       cataalogue = "t2.small"

    }
}

variable "ami_id" {
  type    = string
  default = "ami-0b4f379183e5706b9"
}

variable "domain_id" {
  type    = string
  default = "prasuna.site"
}
variable "sg_name" {
  type    = string
  default = "roboshop-all"
}

variable "sg_description" {
  type    = string
  default = "allow all ports"
}

variable "inbound-from-port" {
  type    = number
  default = "0"
}

variable "cidr_blocks" {
  type    = list
  default = ["0.0.0.0/0"]
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "zone_id" {
  type    = string
  default = "Z03864262OMVQMXMFTVWQ"
}