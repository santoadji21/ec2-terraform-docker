###==========  variable.tf ==========###

####################################################################
# Authors: Ahmad Aji Santoso
# Email: ahmad21@student.ub.ac.id
####################################################################

variable "aws_region" {
  description = "AWS region on which we will setup the swarm cluster"
  default = "ap-southeast-1"
}

variable "ami" {
  description = "Ubuntu Server 16.04 LTS (HVM), SSD Volume Type (x86)"
  default = "ami-0f9d733050c9f5365"
}

variable "instance_type" {
  description = "Instance type"
  default = "t2.micro"
}

variable "key_path" {
  description = "SSH Public Key path"
  default = "YOUR SSH PATH"
}

variable "key_name" {
  description = "Desired name of Keypair..."
  default = "YOUR NAME KEYPAIR"
}

variable "install_docker" {
  description = "Script to install Docker Engine"
  default = "install-docker.sh"
}
