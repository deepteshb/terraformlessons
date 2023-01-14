resource "aws_instance" "web" {
  ami           = var.ami_id_for_dc
  instance_type = var.instance_type_for_dc

  tags = {
    Name = "HelloWorld"
  }
}