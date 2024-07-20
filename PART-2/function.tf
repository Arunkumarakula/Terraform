resource "aws_key_pair" deployer" {
    key_name = "devops-pub"
    public_key = files("${path.module}/devops.pub")
}

resource "aws_instance" "arun" {
    ami = var.ami_id
    instance_type = "t2.micro"
}