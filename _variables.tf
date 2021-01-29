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

variable "transit_nacl" {
    description = "Transit' NACL"
}