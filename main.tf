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


output "my_public_ip" {
	value = aws_instance.my_ec2.public_ip
}

output "my_public_dns" {
	value = aws_instance.my_ec2.public_dns
}

output "common_tags_output" {
	value = local.common_tags
}