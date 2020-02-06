resource "aws_security_group" "instances" {
  name = "dpg-2048-${var.animal}-${var.env}-instances"

  ingress {
    protocol    = "tcp"
    from_port   = 22
    to_port     = 22
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    protocol    = "tcp"
    from_port   = 20480
    to_port     = 20480
    cidr_blocks = ["0.0.0.0/0"] #[aws_default_vpc.default.cidr_block]
  }

  egress {
    protocol    = -1
    from_port   = 0
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
  }

}
