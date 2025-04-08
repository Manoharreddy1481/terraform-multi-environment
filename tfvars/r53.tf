resource "aws_route53_record" "terraform" {
  count           = length(var.instance_names)
  zone_id         = var.zone_id
  name            = var.instance_names[count.index] == "frontend" ? var.domain_name : "${var.instance_names[count.index]}.${var.domain_name}"
  type            = "A"
  ttl             = 1
  records         = aws_instance.Terraform[count.index] == "frontend" ? [aws_instance.Terraform[count.index].public_ip] : [aws_instance.Terraform[count.index].private_ip]
  allow_overwrite = true

}