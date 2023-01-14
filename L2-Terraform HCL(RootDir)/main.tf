# HCL (Hashicorp Configuration Language)
# block Type --> Resource Type --> Identifier --> { Arguments and Expresssions}

# For single line comments you use # and //. For multiline comments you use /* and */
// block "resource_type" "identifier" {

/*   argument1 = expression
   argument2 = expression
   argument3 = expression
}
*/

# Create a Test EC2 Instance
resource "aws_instance" "ec2-linux-Instance" {
    instance_type = "t2.micro"
    ami = "ami-0a606d8395a538502"

    tags = {
        Name = "WEBSERVER1"
        ENV = "Prod"
        Owner = "Deeptesh"
    }
}
