####################################################################
# Authors: Ahmad Aji Santoso
# Email: ahmad21@student.ub.ac.id
####################################################################

init: 
	terraform init
plan:
	terraform plan
apply:
	terraform apply -auto-approve
destroy:
	terraform destroy 

play:
	sudo ansible-playbook -i inventory/hosts playbook.yml
