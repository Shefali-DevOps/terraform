resource "aws_route53_record" "dns" {
  name    = "test.dev.shefalidevops.shop"
  type    = "A"
  zone_id = "Z04468998YJS3W1N2Q1P"
  ttl =  15
  records = [var.private_ip]
}

variable "private_ip" {}