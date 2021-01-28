variable "org_name" {
  description = "Name for this organization"
}

variable "vpc_id" {
  description = "Id for de VPC"
}

variable "external_ip" {
  description = "IP Address for GW"
}

variable "vpn_type" {
  description = "Type of vpn tunnel"
}

variable "onpremise_cidr" {
    description = "CIDR of internal client network"
}

variable "rtable_id" {
    description = "ID of router table propagation"
}

variable "requester_cidrs" {
  default     = []
  type        = list(string)
  description = "List of CIDRs to add to openvpn-access SG so clients can connect to resources"
}