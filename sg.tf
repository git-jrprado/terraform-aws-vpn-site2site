resource "aws_security_group" "vpn-gw-sg" {
  count  = length(var.requester_cidrs) > 0 ? 1 : 0
  name   = "vpn-access-${var.org_name}"
  vpc_id = var.vpc_id

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = var.requester_cidrs
  }
}
