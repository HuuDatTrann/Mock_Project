resource "aws_instance" "jenkins" {
  ami                    = "ami-0df7a207adb9748c7"
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.jenkins_sg.id]
  key_name               = var.key_name

  tags = {
    Name = "jenkins-ec2"
  }
}
