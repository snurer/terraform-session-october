resource "aws_instance" "web_instance" {
  ami           = data.aws_ami.amazon_linux_2.image_id
  instance_type = var.instance_type
  vpc_security_group_ids = [ aws_security_group.web.id ]
  user_data = data.template_file.user_data.rendered
  tags = {
    Name        = "${var.env}-instance"   
    Name2       = format("%s-instance", var.env)
  }
}

resource "aws_instance" "frontend" {
  ami           = data.aws_ami.amazon_linux_2.image_id
  instance_type = var.instance_type
  vpc_security_group_ids = [ aws_security_group.web.id ]
  user_data = data.template_file.user_data.rendered
  tags = {
    Name        = "${var.env}-frontend-instance"   
  }
}

resource "aws_instance" "backend" {
  ami           = data.aws_ami.amazon_linux_2.image_id
  instance_type = var.instance_type
  vpc_security_group_ids = [ aws_security_group.web.id ]
  user_data = data.template_file.user_data.rendered
  tags = {
    Name        = "${var.env}-backend-instance"   
  }
}