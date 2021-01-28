output "tunnel1_address" {
    value = aws_vpn_connection.aws-vpn-conn.tunnel1_address
}

output "tunnel1_preshared_key" {
    value = aws_vpn_connection.aws-vpn-conn.tunnel1_preshared_key
}

output "tunnel1_cgw_inside_address" {
    value = aws_vpn_connection.aws-vpn-conn.tunnel1_cgw_inside_address
}

output "tunnel1_vgw_inside_address" {
    value = aws_vpn_connection.aws-vpn-conn.tunnel1_vgw_inside_address
}

output "tunnel2_address" {
    value = aws_vpn_connection.aws-vpn-conn.tunnel2_address
}

output "tunnel2_preshared_key" {
    value = aws_vpn_connection.aws-vpn-conn.tunnel2_preshared_key
}

output "tunnel2_cgw_inside_address" {
    value = aws_vpn_connection.aws-vpn-conn.tunnel2_cgw_inside_address
}

output "tunnel2_vgw_inside_address" {
    value = aws_vpn_connection.aws-vpn-conn.tunnel2_vgw_inside_address
}