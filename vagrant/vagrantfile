provider "vagrant" {}

resource "vagrant_vm" "centos9" {
  box = "centos/9"          # Vagrant box for CentOS 9
  memory = 4096             # 4GB RAM
  cpus = 4                  # 4 CPUs
  disk_size = 30720         # Disk size in MB (30GB)
  disk_type = "thin"        # Thin provisioning

  provisioner "ansible" {
    playbook = "ansible/playbook.yml"  # Path to your Ansible playbook
    inventory = "ansible/inventory/hosts"  # Path to your inventory file
  }
}
