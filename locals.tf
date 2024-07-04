locals {
    az_names = slice(data.aws_availability_zones.az.names,0,2)
}