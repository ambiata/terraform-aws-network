data "aws_availability_zones" "available" {}

data "aws_availability_zone" "az" {
  count = "${length(data.aws_availability_zones.available.names)}"
  name  = "${data.aws_availability_zones.available.names[count.index]}"
}
