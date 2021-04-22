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

variable "route_table_ids" {
    description = "IDs of router table propagation"
}

variable "nacl_table" {
    description = "NACL's table to creating rules for subnet"
}

variable "serial" {
  default     = 0
  description = "Number of this peering, distinct from others, to avoid conflict with NACL rule number"
}
