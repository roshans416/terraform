resource "aws_instance" "centos-instance" {
  ami             = "${data.aws_ami.centos.id}"
  instance_type   = "${var.instance_type}"
  key_name        = "${aws_key_pair.custom-key.key_name}"
  availability_zone = "${var.availability_zone}"
  root_block_device {
    volume_type = "${var.storage_types["root_volume"]}"
    volume_size = "${var.storage_sizes["root_volume"]}"
}
  security_groups = [
    "${aws_security_group.allow_ssh.name}",
    "${aws_security_group.allow_outbound.name}"
  ]

  tags {
    Name = "centos-instance"
  }
}

resource "aws_volume_attachment" "data-volume-attachment" {
  device_name = "/dev/xvdb"
  instance_id = "${aws_instance.centos-instance.id}"
  volume_id   = "${aws_ebs_volume.data-volume.id}"
}
