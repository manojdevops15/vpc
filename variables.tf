variable "cidr_block" {
    type = string
    default = "10.0.0.0/16"
}

variable "dns_hostnames" {
    type = bool
    default = true
}

variable "common_tags" {
    default = {}
}

variable "vpc_tags" {
    default = {}
}

variable "project_name" {
    type = string
}

variable "environment" {
    type = string
}

variable "internet_gateway" {
    type = map
    default = {}
}

variable "public_subnet_cidr" {
    type = list
    
    validation {
        condition = length(var.public_subnet_cidr) == 2
        error_message = "please give only 2 cidr"
    }
}

variable "private_subnet_cidr" {
    type = list
    
    validation {
        condition = length(var.private_subnet_cidr) == 2
        error_message = "please give only 2 cidr"
    }
}

variable "database_subnet_cidr" {
    type = list
    
    validation {
        condition = length(var.database_subnet_cidr) == 2
        error_message = "please give only 2 cidr"
    }
}

variable "is_peering_required" {
    type = bool
    default = true
}

variable "acceptor_vpc_id" {
    type = string
    default = ""
}