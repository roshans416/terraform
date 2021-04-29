output "server-ip" {
  value = "${aws_eip.custom-eip.public_ip}"
}
