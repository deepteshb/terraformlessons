#Infrastructure as Code
resource "aws_instance" "web1" {
  ami           = var.ami_id_for_dc
  instance_type = var.instance_type_for_dc

  tags = {
    Name = "Web1"
  }
}

resource "aws_instance" "web" {
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


resource "aws_instance" "web4" {
  ami           = var.ami_id_for_dc
  instance_type = var.instance_type_for_dc

  tags = {
    Name = "Web3"
  }
}
