variable "source_ip" {
  description = "my local machine ip"
}
variable "instance_type" {
  description = "instance type to use"
}
variable "ec2-names" {
  type = list(any)
}
variable "Deparatment" {
  type = list(any)
}
variable "user" {
  type = set(string)
}
