resource "aws_network_acl_rule" "in_vpn_s2s" {
  network_acl_id = var.nacl_table
  rule_number    = 2000 + var.serial
  egress         = false
  protocol       = -1
  rule_action    = "allow"
  cidr_block     = var.onpremise_cidr
}

resource "aws_network_acl_rule" "out_vpn_s2s" {
  network_acl_id = var.nacl_table
  rule_number    = 2000 + var.serial
  egress         = true
  protocol       = -1
  rule_action    = "allow"
  cidr_block     = var.onpremise_cidr
}
