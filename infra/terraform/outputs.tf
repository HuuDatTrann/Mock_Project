output "jenkins_public_ip" {
  value = aws_instance.jenkins.public_ip
}

output "cms_public_ip" {
  value = aws_eip.cms_eip.public_ip
}

output "api_domain" {
  value = "https://api.do2506.click"
}
