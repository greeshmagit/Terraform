data "template_file" "tempfile"{
    template = file("./scripts/userdata.sh")
}
data "aws_subnet" "pub_sub_id"{
        id = local.pub_subnet_ids[0]
}
data "aws_ami" "ami_id"{
    most_recent = true
    filter {
        name   = "owner-alias"
        values = ["amazon"]
    }
    filter {
        name   = "name"
        values = ["amzn2-ami-hvm*"]
     }
   }

