output "ipaddressoftheec2machine" {
    value = aws_instance.web.private_ip
  
}

output "dnsaddress" {
  value = aws_instance.web.public_dns
}