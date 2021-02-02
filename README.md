# terraform-aws-vpn-site2site

This terraform module provide resources to establish VPN site-to-site AWS VPN with Customer On-premise internal's network, providing routes between this network and VPC network. 




         .-~~~-.                                -----------------------    
  .- ~ ~-(       )_ _                           |                     |
 /                     ~ -.     ipsec tunnel    |                     |
|          AWS VPC          \ ----------------> | On-premise Customer |
 \                         .'                   |       Network       |
   ~- . _____________ . -~                      |                     |
                                                -----------------------
