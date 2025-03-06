resource "aws_instance" "flask_server" {
  ami           = "ami-02ffde950ebf433fd"  # Ubuntu 22.04 LTS (Check latest AMI in AWS)
  instance_type = "t3.micro"
  key_name      = "balaji-was"  # Replace with your AWS key-pair name

  security_groups = [aws_security_group.flask_sg.name]

  user_data = file("install_script.sh")  # Bootstrap script to install dependencies

  tags = {
    Name = "FlaskServer"
  }
}

