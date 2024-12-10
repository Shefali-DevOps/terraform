variable "instance_type" {
  default = "t2.micro"
}

variable "domain_name" {
  default = "shefalidevops.shop"
}

variable "components" {
  default = ["frontend", "mongo", "catalogue"]
}