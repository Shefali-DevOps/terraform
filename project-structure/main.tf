terraform {
  backend "s3" {}
}

resource "null_resource" "test" {}

# terraform init -backend-config=env-dev/state.tfvars
# terraform init -backend-config=env-prod/state.tfvars