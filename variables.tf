# variables for EC2 secret key
variable "EC2-key-pair" {
  type    = string
  description = "import from EC2 Key-pair attribute"
  default = "aws-pro"
}


# variables for zone 1
variable "variable_zone1" {
  type    = string
  description = "imported from variable zone1"
  default = "cn-northwest-1a"
}

# variables for zone 2
variable "variable_zone2" {
  type    = string
  description = "imported from variable zone2"
  default = "cn-northwest-1b"
}

# variables for zone 3
variable "variable_zone3" {
  type    = string
  description = "imported from variable zone3"
  default = "cn-northwest-1c"
}
