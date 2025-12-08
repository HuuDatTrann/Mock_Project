output "cms_public_ip" {
  value = aws_instance.cms_ec2.public_ip
}

output "cms_url" {
  value = "http://${aws_instance.cms_ec2.public_ip}:8080"
}
