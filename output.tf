###==========  output.tf ==========###

####################################################################
# Authors: Ahmad Aji Santoso
# Email: ahmad21@student.ub.ac.id
####################################################################

output "moodle_public_ip" {
  value = [aws_instance.moodle.public_ip]
}

# Generate Hosts Inventory
resource "local_file" "AnsibleHosts" {
    filename = "./inventory/hosts"
    content = templatefile("hosts.tmpl",
        {
            moodleIp = aws_instance.moodle.public_ip,
        }
    )
}
