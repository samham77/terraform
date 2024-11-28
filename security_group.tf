resource "aws_security_group" "newformat" {
  name        = "new_format_sg"
  description = "try new fromat"

  ingress {
    description = "allow http"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = [var.source_ip]
  }
  ingress {
    description = "allow https"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = [var.source_ip]
  }

  ingress {
    description = "allow ssh"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "allow icmp"
    from_port   = -1
    to_port     = -1
    protocol    = "icmp"
    cidr_blocks = [var.source_ip]
  }

  egress {
    description = "allow all traffic to egress"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "new_format_SG"
  }
}
