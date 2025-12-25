resource "aws_instance" "cms" {
  ami                    = "ami-0df7a207adb9748c7"
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.cms_sg.id]
  key_name               = var.key_name

  tags = {
    Name = "cms-ec2"
  }
}
