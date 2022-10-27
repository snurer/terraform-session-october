variable "env" {
  type        = string
  description = "This is a variable for the environment"
  default     = "dev"
}

variable "snapshot" {
  type        = bool
  description = "Boolean for creating database snapshot"
  default     = false
}