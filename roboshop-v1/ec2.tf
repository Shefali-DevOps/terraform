resource "aws_instance" "frontend"{
  ami = "ami-09c813fb71547fc4f"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-05fc8f00bef558456"]

  tags = {
    name="frontend.dev"
  }
}

resource "aws_route53_record" "frontend" {
  name    = "frontend.dev.shefalidevops.shop"
  type    = "A"
  zone_id = "Z04468998YJS3W1N2Q1P"
  ttl =  15
  records = [aws_instance.frontend.private_ip]
}