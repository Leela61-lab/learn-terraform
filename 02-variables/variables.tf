variable "ami-id" {
    type = string
    default = "ami-0055977a6e828a4f4"
    description = "ami-id of the ec2 instance"
}

variable "instance-type" {
    type = string
    default = "t3.micro"
    description = "Instance type of the ec2 instance"
}

variable "ec2-tags" {
    type = map
    default = {
        name = "roboshop-vars"
        environment = "dev"
        terraform = "true"
        project = "roboshop"
        component = "mongodb"
    }
}

variable "cidr" {
    type = list
    default = ["0.0.0.0/0"]
}

variable "from-port" {
    type = number
    default = 0
}
