variable "ami_id"{
    type = string
    default = "ami-0b4f379183e5706b9"
}
variable "instances"{
    type = map
    default = {
        Mongodb = "t2.micro"
        Mysql = "t2.micro"
        Redis = "t2.micro"
        web = "t2.micro"
        catalogue = "t2.micro"
        shipping = "t2.micro"
        Rbbitmq = "t2.micro"
        user = "t2.micro"
        payment = "t2.micro"
        cart = "t2.micro"

    }
}

variable "sg_name"{
    default = "allow_all"

}
variable "sg-cidr" {
    default = ["0.0.0.0/0"]
}