resource "aws_security_group" "web" {
  name        = "web-sg"
  description = "This is a security group for web instance"
  vpc_id      = "vpc-045a995defed0ee92"
}

resource "aws_security_group_rule" "web_ingress" {
  count             = length(var.ingress_ports)
  type              = "ingress"
  from_port         = element(var.ingress_ports, count.index)
  to_port           = element(var.ingress_ports, count.index)
  protocol          = "tcp"
  cidr_blocks       = [ element(var.ingress_cidrs, count.index) ]
  security_group_id = aws_security_group.web.id
}

resource "aws_security_group_rule" "web_egress" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.web.id
}
