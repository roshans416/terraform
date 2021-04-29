resource "aws_key_pair" "custom-key" {
  key_name   = "custom-key"
  public_key = "${file("custom-key.pub")}"
}
