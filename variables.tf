variable "enabled" {
  default     = "true"
  description = "Set to false to prevent the module from creating or accessing any resources"
}

variable "requestor_vpc_id" {
  type        = string
  description = "Requestor VPC ID"
  default     = ""
}

variable "requestor_vpc_tags" {
  type        = map(string)
  description = "Requestor VPC tags"
  default     = {}
}

variable "acceptor_vpc_id" {
  type        = string
  description = "Acceptor VPC ID"
  default     = ""
}

variable "acceptor_vpc_tags" {
  type        = map(string)
  description = "Acceptor VPC tags"
  default     = {}
}

variable "auto_accept" {
  type        = bool
  default     = true
  description = "Automatically accept the peering (both VPCs need to be in the same AWS account)"
}

variable "acceptor_allow_remote_vpc_dns_resolution" {
  type        = bool
  default     = true
  description = "Allow acceptor VPC to resolve public DNS hostnames to private IP addresses when queried from instances in the requestor VPC"
}

variable "requestor_allow_remote_vpc_dns_resolution" {
  type        = bool
  default     = true
  description = "Allow requestor VPC to resolve public DNS hostnames to private IP addresses when queried from instances in the acceptor VPC"
}

variable "namespace" {
  description = "Namespace (e.g. `cp` or `cloudposse`)"
  type        = string
}

variable "stage" {
  description = "Stage (e.g. `prod`, `dev`, `staging`)"
  type        = string
}

variable "name" {
  description = "Name  (e.g. `app` or `cluster`)"
  type        = string
}

variable "delimiter" {
  type        = string
  default     = "-"
  description = "Delimiter to be used between `namespace`, `stage`, `name`, and `attributes`"
}

variable "attributes" {
  type        = list(string)
  default     = []
  description = "Additional attributes (e.g. `policy` or `role`)"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Additional tags (e.g. map('BusinessUnit`,`XYZ`)"
}
