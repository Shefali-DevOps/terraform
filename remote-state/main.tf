resource "null_resource" "test"{}

  terraform{
    backend "s3"{
      bucket = "shefali-terraform-state"
      key = "test/terraform.tfstate"
      region = "us-east-1"
    }
  }
