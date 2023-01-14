# Defined Variables
# Create a Test EC2 Instance
resource "aws_instance" "domain-controllers" {

    instance_type = var.middle
    ami = "ami-0a606d8395a538502"

    tags = {
        Name = "${var.prefix}-${count.index}-${var.middle}-${var.suffix}"
        ENV = "Prod"
        Owner = "Deeptesh"
    }
}
