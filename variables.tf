# variables for AWS_ACCESS_KEY_ID
variable "AWS_ACCESS_KEY_ID" {
  type    = string
  description = "import from terraform cloud"
}

# variables for AWS_SECRET_ACCESS_KEY
variable "AWS_SECRET_ACCESS_KEY" {
  type    = string
  description = "import from terraform cloud"
}


# variables for EC2 secret key
variable "EC2-key-pair" {
  type    = string
  description = "import from EKS NODE EC2 Key-pair attribute"
  default = "test-for-ECS"
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
