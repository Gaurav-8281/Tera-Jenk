resource "aws_instance" "Dev_Server" {
    ami = var.ami
    instance_type = var.instance_type
    tags = {
      name = "Dev server"
      ENV = "Production"
    }
    user_data =  file ("jenk_tera.sh")
  
}
