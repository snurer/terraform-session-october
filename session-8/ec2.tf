resource "aws_instance" "web_instance" {
  ami                    = data.aws_ami.amazon_linux_2.image_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.web.id]
  key_name               = aws_key_pair.terraform_server.key_name
  tags = {
    Name  = "${var.env}-instance"
    Name2 = format("%s-instance", var.env)
  }
  ######################## File Provisioner #######################

  provisioner "file" {
    source      = "/home/ec2-user/terraform-session-october/session-8/index.html"
    destination = "/tmp/index.html"

    connection {
      type        = "ssh"
      user        = "ec2-user"
      host        = self.public_ip
      private_key = file("~/.ssh/id_rsa")
    }
  }
  #################### Remote Exec Provisioner #####################
  provisioner "remote-exec" {
    inline = [
      "sudo yum install httpd -y",
      "sudo systemctl enable httpd",
      "sudo systemctl start httpd",
      "sudo cp /tmp/index.html /var/www/html/index.html"
    ]

    connection {
      type        = "ssh"
      user        = "ec2-user"
      host        = self.public_ip
      private_key = file("~/.ssh/id_rsa")
    }
  }
}
resource "aws_key_pair" "terraform_server" {
  key_name   = "TerraformServer"
  public_key = file("~/.ssh/id_rsa.pub")
}

######################### Local Exec Provisioner #######################

resource "null_resource" "local_script" {
  provisioner "local-exec" {
    command = "echo 'Hello from the Local Exec!' > local.txt"
  }  
}
# Null Resource is not added to Terraform.tfstate file.