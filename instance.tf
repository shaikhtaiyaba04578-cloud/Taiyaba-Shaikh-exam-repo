resource "aws_instance" "web_server" {
  ami           = "ami-02b8269d5e85954ef"
  instance_type = var.instance_type
  
  
  vpc_security_group_ids = [aws_security_group.web_sg.id]

  
  root_block_device {
    volume_size = 30
    volume_type = "gp3"
  }

  
  user_data = <<-EOF
              #!/bin/bash
              sudo apt-get update
              sudo apt-get install -y nginx
              sudo systemctl start nginx
              sudo systemctl enable nginx
              EOF

  tags = {
    Name = "Taiyaba-Exam-Webserver"
  }
}