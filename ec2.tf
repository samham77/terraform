resource "aws_instance" "myinstance" {
  ami             = var.ami
  instance_type   = var.instance_type
  vpc_security_group_ids = [aws_security_group.newformat.id]
  key_name = "vockey"
  tags = {
    Name = "modules-myEC2"
  }
}
