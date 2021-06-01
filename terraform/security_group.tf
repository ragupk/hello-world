resource "aws_security_group" "allow_ssh" {
name = "allow_SSH"
description = "Allow SSH inbound traffic"

ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks= ["0.0.0.0./0"]
}
ingress {
    # SSH Port 80 allowed from any IP
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
}

  ingress {
    # SSH Port 80 allowed from any IP
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    cidr_blocks = [ "0.0.0.0/0" ]
    from_port = 0
    protocol = -1
    to_port = 0
  } 

}
