resource "aws_instance" "web1" {
  ami           = var.ami_id_for_dc
  instance_type = var.instance_type_for_dc

  tags = {
    Name = "Web1"
  }
}

resource "aws_instance" "web2" {
  ami           = var.ami_id_for_dc
  instance_type = var.instance_type_for_dc

  tags = {
    Name = "Web2"
  }
}

resource "aws_instance" "web3" {
  ami           = var.ami_id_for_dc
  instance_type = var.instance_type_for_dc

  tags = {
    Name = "Web3"
  }
}