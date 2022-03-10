// name of the ressource: intro_server
// aws_instance: EC2
// tags: name of the instance
resource "aws_instance" "intro_server" {
  ami           = "ami-0e1d30f2c40c4c701"
  instance_type = var.instance_type

  tags = {
    Name = "intro_server-${local.project_name}"
  }
}
