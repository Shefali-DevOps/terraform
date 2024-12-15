resource "null_resource" "test"{}

  terraform{
    backend "s3"{
      bucket = "shef-devops-terraform"
      key = "test/terraform.tfstate"
      region = "us-east-1"
    }
  }
