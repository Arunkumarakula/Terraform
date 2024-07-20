locals {
    ami_id = "ami-0b4f379183e5706b9"
    public_key = file("${path.module}/devops.pub")
}