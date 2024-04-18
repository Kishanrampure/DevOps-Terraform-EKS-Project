variable "vpc_cidr" {
  description = "Vpc CIDR"
  type        = string
}

variable "public_subnets" {
  description = "public_subnet"
  type        = list(string)
}

variable "private_subnets" {
  description = "Private_subnet CIDR"
  type        = list(string)
}

variable "instance_type" {
  description = "Node Instance"
  type        = list(string)
}