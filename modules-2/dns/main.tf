resource "aws_route53_record" "frontend" {
  zone_id = "Z04468998YJS3W1N2Q1P"
  name    = "test1.shefalidevops.shop"
  type    = "A"
  ttl     = 15
  records = [var.private_ip]
}

variable "private_ip" {}