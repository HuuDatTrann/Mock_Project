data "aws_route53_zone" "main" {
  name = "do2506.click"
}

resource "aws_route53_record" "api" {
  zone_id = data.aws_route53_zone.main.zone_id
  name    = "api.do2506.click"
  type    = "A"
  ttl     = 300
  records = [aws_eip.cms_eip.public_ip]
}
