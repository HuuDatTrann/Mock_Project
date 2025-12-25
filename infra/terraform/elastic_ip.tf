resource "aws_eip" "cms_eip" {
  instance = aws_instance.cms.id
}
