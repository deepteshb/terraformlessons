# dependency which you dont have to define - implicit in nature
resource "aws_vpc" "mynewvpc" {
  cidr_block       = var.add_cidr_block_for_your_vpc
  instance_tenancy = "default"

  tags = {
    Name = var.nameofyourvpc
  }
}

resource "aws_subnet" "public_subnet" {
  vpc_id     = aws_vpc.mynewvpc.id
  cidr_block = var.add_cidr_block_for_your_subnet
  map_public_ip_on_launch = var.createpubliciponlaunch

  tags = {
    Name = "${var.nameofyourvpc}-Public-Subnet"
  }
}

resource "aws_instance" "WebServer1" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id = aws_subnet.public_subnet.id

  tags = {
    Name = "${var.nameofyourvpc}-${var.prefix}-0"
  }
}