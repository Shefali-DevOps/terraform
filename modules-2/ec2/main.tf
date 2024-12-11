resource "aws_instance" "test" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-05fc8f00bef558456"]

  tags = {
    Name = "test"
  }
}

output "private_ip" {
  value = "aws_instance.test.private_ip"
}