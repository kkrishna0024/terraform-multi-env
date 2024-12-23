resource "aws_security_group" "roboshop-all" {
  name        = var.sg_name
  description = var.sg_description
  #vpc_id      = "${aws_vpc.main.id}"

  ingress {
    description = "Allow all ports"
    from_port   = var.inbound-from-port
    to_port     = 0
    protocol    = "tcp"
    cidr_blocks = var.cidr_blocks
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}