variable "org_name" {
  description = "Name for this organization"
}

variable "vpc_id" {
  description = "Id for de VPC"
}

variable "external_ip" {
  description = "IP Address for GW"
}

variable "onpremise_cidr" {
    description = "CIDR of internal client network"
}

variable "rtable_id" {
    description = "ID of router table propagation"
}

variable "rtable_nacl" {
    description = "Transit' NACL"
}

variable "serial" {
  default     = 0
  description = "Number of this peering, distinct from others, to avoid conflict with NACL rule number"
}