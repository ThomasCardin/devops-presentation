// Output somevalues when we execute terraform plan
output "public_ip" {
  value = aws_instance.intro_server.public_ip
}