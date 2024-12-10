resource "aws_instance" "frontend"{
  ami = data.aws_ami.ami.image_id
  instance_type = var.instance_type
  vpc_security_group_ids = data.aws_security_groups.sg.ids

  tags = {
    name="frontend.dev"
  }
}

resource "aws_route53_record" "frontend" {
  name    = "frontend.dev.${var.domain_name}"
  type    = "A"
  zone_id = data.aws_route53_zone.zone.zone_id
  ttl =  15
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "mongo"{
  ami = data.aws_ami.ami.image_id
  instance_type = var.instance_type
  vpc_security_group_ids = data.aws_security_groups.sg.ids

  tags = {
    name="mongo.dev"
  }
}

resource "aws_route53_record" "frontend" {
  name    = "mongo.dev.${var.domain_name}"
  type    = "A"
  zone_id = data.aws_route53_zone.zone.zone_id
  ttl =  15
  records = [aws_instance.mongo.private_ip]
}

resource "aws_instance" "catalogue"{
  ami = data.aws_ami.ami.image_id
  instance_type = var.instance_type
  vpc_security_group_ids = data.aws_security_groups.sg.ids

  tags = {
    name="catalogue.dev"
  }
}

resource "aws_route53_record" "frontend" {
  name    = "catalogue.dev.${var.domain_name}"
  type    = "A"
  zone_id = data.aws_route53_zone.zone.zone_id
  ttl =  15
  records = [aws_instance.catalogue.private_ip]
}