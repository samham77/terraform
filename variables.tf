variable "source_ip" {
  description = "my local machine ip"
}
variable "instance_type" {
  description = "instance type to use"
}
variable "ec2-names" {
  type = list(any)
}
variable "secret_key" {
  type = string
}
variable "access_key" {
  type = string
}
variable "Deparatment" {
  type = list(any)
}
variable "user" {
  type = set(string)
}
