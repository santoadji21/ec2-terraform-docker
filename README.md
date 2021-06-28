# Deploy Moodle E-learning USing Ansible and Terraform on Amazon Web Serrvices (AWS)


## Require Installation
Terraform and Ansible are required
You Can Install Using This Link
> Instalation [Aws Cli, Terraform and Ansible ](https://github.com/santoadji21/install-terraform-awscli.git) 


### main.tf
## Change This Block With Your AWS IAM KEY
```sh
provider "aws" {
  access_key = "YOUR_AWS_ACCES_KEY"               
  secret_key = "YOUR_AWS_SECRET_KEY"
  region = var.aws_region
}
```

### variable.tf
## Change This Block With Your AWS key_path and key_name
```sh
variable "key_path" {
  description = "SSH Public Key path"
  default = "YOUR SSH PATH"
}

variable "key_name" {
  description = "Desired name of Keypair..."
  default = "YOUR NAME KEYPAIR"
}
```

### hosts.tmpl
## Change This Block With Your AWS key_path 
```sh
[moodle]
${moodleIp} ansible_ssh_common_args='-o StrictHostKeyChecking=no' ansible_user=ubuntu ansible_private_key_file=PATH_KEY
-STORE

```

# Running 

## Init 

```sh
terraform init
```

## Plan

```sh
terraform plan
```

## Apply

```sh
terraform apply
```


## Running Ansible Playbook
```sh
sudo ansible-playbook -i inventory/hosts playbook.yml
```
