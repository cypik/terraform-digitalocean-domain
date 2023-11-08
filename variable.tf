variable "name" {
  type        = string
  default     = "mycustomdomain.com"
  description = "The name of the domain"
}

variable "ip_address" {
  type        = string
  default     = null
  description = "The IP address of the domain. If specified, this IP is used to created an initial A record for the domain."
}

variable "records" {
  type    = map(any)
  default = {}
}

variable "enabled" {
  type    = bool
  default = true
}




