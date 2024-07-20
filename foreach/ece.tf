resource "aws_instance" "Roboshop"{
    for_each = var.instances
    ami = var.ami_id
    instance_type = each.value
    tags = {
        Name = each.key
    }
}