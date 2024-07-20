resource "aws_instance" "ec2"{
    ami = local.ami_id
    instance_type = "t2.micro"
}
resource "aws_key_pair" "deployer" {
    key_name = "devops-pub"
    public_key = local.public_key
}