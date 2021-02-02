resource "aws_vpn_gateway" "aws-vpn-gw" {
  vpc_id  = var.vpc_id
  tags    = {
    Name = "vpn-gw-${var.org_name}"
  }
}

resource "aws_customer_gateway" "aws-vpn-cgw" {
  bgp_asn     = 65000
  ip_address  = var.external_ip
  type        = "ipsec.1"
  tags        = {
    Name = "vpn-cgw-${var.org_name}"
  }
}

resource "aws_vpn_connection" "aws-vpn-conn" {
  vpn_gateway_id      = aws_vpn_gateway.aws-vpn-gw.id
  customer_gateway_id = aws_customer_gateway.aws-vpn-cgw.id
  type                = "ipsec.1"
  static_routes_only  = true
  tags        = {
    Name = "vpn-s2s-${var.org_name}"
  }
}

resource "aws_vpn_connection_route" "aws-vpn-connection" {
  vpn_connection_id      = aws_vpn_connection.aws-vpn-conn.id
  destination_cidr_block = var.onpremise_cidr
}

resource "aws_vpn_gateway_route_propagation" "aws-vpn-route" {
  route_table_id            = var.rtable_id
  vpn_gateway_id            = aws_vpn_gateway.aws-vpn-gw.id
}

