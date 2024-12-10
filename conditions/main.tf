# condition in terraform is to pick a value, Not about running the block
# = expression ? TRUE_VAL : FALSE_VAL

resource "aws_route53_record" "test" {
  name    = "test.shefalidevops.shop"
  type    = "A"
  zone_id = "Z04468998YJS3W1N2Q1P"
  ttl =  var.ttl
  records = ["1.1.1.1"]
}

variable "ttl" {
  default = 15
}