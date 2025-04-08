resource "aws_route53_record" "expense" {
    for_each = var.instance_names
    zone_id = var.zone_id
    name = each.key=="frontend" ? var.domain_name : "${each.key}.${var.domain_name}"
    type="A"
    ttl=1
    records = each.key=="frontend" ? [aws_instance.terraform[each.key].public_ip] : [aws_instance.terraform[each.key].private_ip]
    allow_overwrite = true
  
}