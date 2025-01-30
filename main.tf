resource "aws_instance" "Dev-Server" {
    ami = var.ami
    instance_type = var.instance_type
    tags = {
      name = "Dev server"
      ENV = "Production-server"
    }
    user_data =  file ("jenk_tera.sh")
  
}
