output "User" {
  value ="Hello, ${var.Username}"
}


output "info" {
  value = "Hello, ${var.Username} your age is  ${lookup(var.data-details, "${var.Username}")} and you are from ${var.city}"
}
