variable "asg_min"{
    default = "2"
} 
variable "asg_max"{
    default = "3"
}
variable "instance_type"{
    type = string
    default = "t2.micro"
}
variable "key_name"{
    type = string
    default = "gitnewkey"
}

//target group variables - alb//
variable "target_group_name"{
     default      = "tf-ALB-TG"
}
variable "target_type"{
    default = "instance"
}
variable "load_balancer_type"{
    default = "application"
}  
//networking variables//

variable "vpc_cidr"{
    type = string
    default = "10.0.0.0/16"
    description = "choose CIDR block for vpc"
}
variable "publicsubnets"{
    type = map(any)
    default = {
        "ap-south-1a" : "10.0.0.0/24",
        "ap-south-1b" : "10.0.1.0/24"
    }
}
variable "privatesubnets"{
    type = map(any)
    default = {
        "ap-south-1a" : "10.0.2.0/24"
        "ap-south-1b" : "10.0.3.0/24"
    }
}
variable "launch_config"{
    default = "tf-asg"
}
variable "db_instance_identifier"{
    default = "tf-postgre"
}
variable "database_name"{
    default = "Sqladmin"
}
variable "database_password"{
    default = "Sql1dmin"
}
variable "database_user"{
    default = "terraform"
}

