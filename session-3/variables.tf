variable "env" {
    type = string
    description = "This is a variable for environment"
    default = "dev"
}

variable "ami_id" {
    type = string
    description = "This is a variable for ami id"
    default = "ami-08e2d37b6a0129927"
}

variable "instance_type" {
    type = string
    description = "This is a variable for instance type"
    default = "t2.micro"
}