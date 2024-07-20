resource "aws_security_group" "allow-all"{
    name = var.sg_name
    description = "allowing all ports"


ingress{
    description = "allowing all ports"
    from_port = 0
    to_port = 0
    protocol = "tcp"
    cidr_blocks = var.sg_cidr
}

egress{
    from_port = 0
    to_port = 0
    protocol = "-1"             
    cidr_blocks = var.sg_cidr
 }
}