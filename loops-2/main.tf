resource "null_resource" "fruits" {
  for_each = var.fruits
}

variable "fruits" {
  default = {
    apple = {
      name     = "apple"
      quantity = 10
    }
    banana ={
      name = "banana"
      quantity = 5
    }
  }
}
