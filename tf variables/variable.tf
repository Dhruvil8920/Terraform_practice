//input as string
variable "Username" {
  type = string
}

// input as number
variable "age" {
}

// default value
variable "city" {
  default = "Bharuch"
}

//input as list of string
variable "data" {
  type = list(number)
  default = [5, 25, 1]
}

// default with multiple value
variable "data-details" {
  default = {
    alpha = 22
    beta = 20
  }
}

variable "log-first" {
  type = number
}

variable "log-second" {
  type = number
}

variable "trim" {
  type = string
}