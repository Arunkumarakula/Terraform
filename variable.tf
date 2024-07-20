variable "ami_id" {
    type = string
    default = "ami-0b4f379183e5706b9"
}
variable "instance_type"{
    default = "t2.micro"
}
 variable "sg_name"{
    default = "allow_all"
 }
  variable "sg_cidr"{
    type = list
    default = ["0.0.0.0/0"]
  }

  variable "tags" {
    type = map
    default = {
        Name = "Mongodb"
        Environment = "Dev"
        Terraform = "True"
        project = "Roboshop"
        component = "Mongodb"
    }
  }