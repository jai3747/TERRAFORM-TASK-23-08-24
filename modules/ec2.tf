resource "aws_instance" "web" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.subnet.id
  vpc_security_group_ids = [aws_security_group.sg.id]

  associate_public_ip_address = true

  tags = {
    Name = "web"
  }
}

