output "User" {
  value ="Hello, ${var.Username} your age is ${var.age} and you are from ${var.city} and your favourite game is ${var.data[2]}"
}

# Functions

# join
output "functions-join" {
  value = "${join("-->", var.data)}"
}

# upper
output "functions-upper" {
  value = "${upper(var.data[2])}"
}

output "functions-title" {
  value = "${title(var.data[2])}"
}

# lookup
output "functions-lookup" {
value = "hello my name is ${var.Username} and my age is ${lookup(var.data-details, "${var.Username}")}"
}

# max
output "max" {
  value = "max number is  ${max(2,25,1)}"
}

# floor
output "floor" {
  value = "age is  ${floor(var.age)}"
}

# log
output "log" {
  value = "log is ${log(var.log-first, var.log-second)}"
}

# split
output "split" {
  value = "${split("o", "hello world")}"
}

# trim
output "trim" {
  value = "${trim(var.trim, "/?")}"
}