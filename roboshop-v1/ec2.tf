resource "aws_instance" "frontend"{
  ami = ""
  instance_type = "t2.micro"
  vpc_security_group_ids = [""]

  tags = {
    name="frontend.dev"
  }
}

resource "aws_route53_record" "" {
  name    = "frontend.dev.shefalidevops.shop"
  type    = "A"
  zone_id = ""
  ttl =  15
  records = [aws_instance.frontend.private_ip]
}