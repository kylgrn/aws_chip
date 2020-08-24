resource "aws_route53_zone" "primary" {
  name = "${var.route53_hosted_zone_name}"
}