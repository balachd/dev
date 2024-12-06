resource "random_password" "vmpassword" {
  length           = 16
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}

output "password" {
  value = random_password.vmpassword.result
  sensitive = true
}