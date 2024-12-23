variable "domain_name" {
  default = "shefalidevops.shop"
}

variable "components" {
  default = {
    frontend = {}
    mongo     = {}
    catalogue = {}
    redis     = {}
    rabbitmq  = {}
    mysql     = {}
    user      = {}
    cart      = {}
    shipping  = {}
    payment   = {}
    dispatch  = {}
  }
}