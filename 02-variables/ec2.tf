resource "aws_instance" "web" {
  instance_type = var.instance-type
  ami = var.ami-id
  vpc_security_group_ids = [aws_security_group.web.id]

  tags = var.ec2-tags
}

resource "aws_security_group" "mongodb" {
  name        = "mongodb"
  description = "Allow TLS inbound traffic and all outbound traffic"

  ingress {
    from_port       = var.from-port
    to_port         = 0
    protocol        = "-1"
    cidr_blocks      = var.cidr
  }
  
  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
}