data "aws_ami" "ami-id"{
    most_recent = true
    owners = ["amazon"]

filter{
    name = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-2.0.20240709.1-x86_64-gp2"]

}
}

output "ami-id"{
    value = data.aws_ami.ami-id.id
}

data "aws_vpc" "default" {
    default = true
}

output "vpc_info"{
    value = data.aws_vpc.default
}

resource "aws_security_group" "allow-all"{
    name = "security-group"
    vpc_id = data.aws_vpc.default.id
    description = "allowing all ports"


ingress{
    description = "allowing all ports"
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
}

egress{
    from_port = 0
    to_port = 0
    protocol = "-1"             
    cidr_blocks = ["0.0.0.0/0"]
 }
}