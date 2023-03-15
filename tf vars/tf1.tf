//input as string
variable "Username" {
  type = string
}

// input as number
variable "age" {
  type = number
}

variable "city" {
  type = string
}

variable "data-details" {
  default = {
    alpha = 22
    beta = 20
  }