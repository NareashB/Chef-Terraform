variable "aws_key_name" {
	description = "Use this variable for Pem key"
	default = "nareash"
}
variable "aws_access_key" {
	description = "Use this variable for access key"
}
variable "aws_secret_key" {
	description = "Use this variable for secret key"
}
variable "orgName" {
	description = "Name of your organisation. This will be used for tagging your resources.",
      type = "string"
default = "virtusa"
}
variable "AZ1" {
    description = "CIDR for the whole VPC"
    default = "ca-central-1a"
}
variable "AZ2" {
    description = "CIDR for the whole VPC"
    default = "ca-central-1b"
}


variable "vpc_cidr" {
    description = "CIDR for the whole VPC"
    default = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
    description = "CIDR for the Public Subnet"
    default = "10.0.0.0/24"
}

variable "private_subnet_cidr" {
    description = "CIDR for the Private Subnet"
    default = "10.0.1.0/24"
}

variable "private_subnet2_cidr" {
    description = "CIDR for the Private Subnet"
    default = "10.0.2.0/24"
}

variable "SourceCidrForRDP" {
    description = "IP Cidr from which you are likely to RDP into the instances. You can add rules later by modifying the created security groups e.g. 54.32.98.160/32"
    default = "0.0.0.0/0"
}
