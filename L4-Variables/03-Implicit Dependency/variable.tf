variable "instance_type" {
    description = "Please enter the value for Instance Type eg. t2.micro, t3.large. t3.micro"
    default = "t3.micro"
}

variable "ami_id" {
    description = "ami id for amazon linux"
    default = "ami-0cca134ec43cf708f"
  
}

variable "createpubliciponlaunch" {
    description = "choose true if you want to launch a public ip by default"
    type = bool
    default = false
  
}

variable "add_cidr_block_for_your_vpc" {
    description = "add your vpc cidr block here"
    default = "10.0.0.0/16"
  
}

variable "add_cidr_block_for_your_subnet" {
    description = "add your subnet cidr block here"
    default = "10.0.1.0/24"
  
}

variable "nameofyourvpc" {
    description = "Give a name to your VPC"
    default = "MYVPC"
    
  
}

variable "prefix" {
    default = "WebServer"
  
}