variable "env" {
  type        = string
  description = "This is a variable for environment"
  default     = "dev"
}

variable "ami_id" {
  type        = string
  description = "This is a variable for ami id"
  default     = "ami-08e2d37b6a0129927"
}

variable "instance_type" {
  type        = string
  description = "This is a variable for instance type"
  default     = "t2.micro"
}

variable "ingress_ports" {
  type        = list(string)
  description = "This is a list of ports for ingress rule"
  default     = ["22", "80", "443", "3306", "53", "5432", "2049" ]
}

variable "ingress_cidrs" {
  type        = list(string)
  description = "This is a list of CIDRs for ingress ports"
  default     = ["8.0.0.0/8", "10.0.0.0/16", "0.0.0.0/0", "192.168.1.0/24", "0.0.0.0/0", "192.168.1.0/24", "0.0.0.0/0" ]
}