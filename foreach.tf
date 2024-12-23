resource "aws_instance" "web" {
  for_each               = var.instance_names
  ami                    = var.ami_id
  instance_type          = each.value
  vpc_security_group_ids = [aws_security_group.roboshop-all.id]

  tags = {

    Name = each.key
  }

}

resource "aws_route53_record" "www" {
  for_each = aws_instance.web
  zone_id  = var.zone_id
  name     = "${each.key}.${var.domain_id}"
  type     = "A"
  ttl      = 1
  records  = [each.key == "web" ? each.value.public_ip : each.value.private_ip]
}