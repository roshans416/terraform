resource "aws_ebs_volume" "data-volume" {
  availability_zone = "${var.availability_zone}"
  type              = "${var.storage_types["ebs_volume"]}"
  size              = "${var.storage_sizes["ebs_volume"]}"
}
