data "aws_availability_zones" "az" {
  state = "available"
  #all_availability_zones = true
}

data "aws_vpc" "default" {
  default = true
}

data "aws_route_table" "default" {
  vpc_id = data.aws_vpc.default.id
}