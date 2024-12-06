
locals {
  
}

resource "random_password" "vmpassword" {
  length           = 16
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}

output "out_password" {
  value = random_password.vmpassword.result
}