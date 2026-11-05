resource "aws_instance" "web" {
  instance_type = vars.instance-type
  ami = vars.ami-id
  vpc_security_group_ids = [aws_security_group.web.id]

  tags = vars.ec2-tags
}

resource "aws_security_group" "web" {
  name        = "web"
  description = "Allow TLS inbound traffic and all outbound traffic"

  ingress {
    from_port       = vars.from-port
    to_port         = 0
    protocol        = "-1"
    cidr_blocks      = vars.cidr
  }
  
  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
}