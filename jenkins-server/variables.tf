variable "vpc_cidr" {
  description = "Vpc CIDR"
  type        = string
}

variable "public_subnets" {
  description = "public_subnet"
  type        = list(string)
}

variable "instance_type" {
  description = "instance_type"
  type        = string
}