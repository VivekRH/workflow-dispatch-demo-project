resource "aws_key_pair" "auth_key" {

  key_name   = "${var.project_name}-${var.project_env}-publickey"
  public_key = file("shoppingapp.pub")
  tags = {
    Name = "${var.project_name}-${var.project_env}-publickey"
  }

}

resource "aws_security_group" "sg_frontendaccess" {

  name        = "${var.project_name}-${var.project_env}-sg_frontendaccess"
  description = "Allowing http and https access"

  ingress {

    description      = "http access"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]


  }


  ingress {
    description      = "https access"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]


  }

  egress {
    description = "Allowing all outgoing traffic"
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
}

  tags = {
    Name = "${var.project_name}-${var.project_env}-sgfrontendaccess"

  }

}
