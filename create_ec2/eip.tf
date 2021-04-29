resource "aws_eip" "custom-eip" {
  instance    = "${aws_instance.centos-instance.id}"
}
