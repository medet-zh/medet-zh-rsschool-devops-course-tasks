locals {
	common_tags = {
		Department = "LGC"
		Project = "Certification"
	}
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-0ebfd941bbafe70c6"
  instance_type = "t2.micro"
  tags = local.common_tags
}

resource "aws_instance" "EC2_out_TF" {
	ami                                  = "ami-0ebfd941bbafe70c6"
	instance_type                        = "t2.micro"
	tags = local.common_tags
}

resource "aws_instance" "EC2_out_TF_1" {
	ami                                  = "ami-0ebfd941bbafe70c6"
	instance_type                        = "t2.micro"
	tags = local.common_tags
}

resource "aws_instance" "EC2_out_TF_2" {
	ami                                  = "ami-0ebfd941bbafe70c6"
	instance_type                        = "t2.micro"
	tags = local.common_tags
}

resource "aws_instance" "EC2_out_TF_3" {
	ami                                  = "ami-0ebfd941bbafe70c6"
	instance_type                        = "t2.micro"
	tags = local.common_tags
}
