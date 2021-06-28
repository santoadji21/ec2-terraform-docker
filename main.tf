###========== main.tf ==========###

####################################################################
# Authors: Ahmad Aji Santoso
# Email: ahmad21@student.ub.ac.id
####################################################################

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Aws provider and access details
provider "aws" {
  access_key = "YOUR_AWS_ACCES_KEY"               
  secret_key = "YOUR_AWS_SECRET_KEY"
  region = var.aws_region
}

resource "aws_instance" "moodle" {
  ami = var.ami
  associate_public_ip_address = false
  instance_type = var.instance_type
  key_name = var.key_name
  user_data = file(var.install_docker)
  vpc_security_group_ids = [aws_security_group.moodle.id]

  tags = {
      Name  = "moodle"
  }

  ebs_block_device {
    device_name = "/dev/sda1"
    volume_type = "gp2"
    volume_size = 10

  tags = {
    Name = "MoodleVolume"
    }
  }

}


