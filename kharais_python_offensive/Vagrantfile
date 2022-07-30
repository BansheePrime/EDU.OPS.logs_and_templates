# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu2004"
  config.ssh.insert_key = false
  config.vm.synced_folder ".", "/vagrant", disabled = true
  config.vm.provider :virtualbox do |v|
    v.memory = 1024
    v.cpus = 1
    v.linked_clone = true
  end

  # Sword server
  config.vm.define "sword" do |sword|
    sword.vm.hostname = "sword.test"
    sword.vm.network :private_network, ip: 192.168.62.12
  end

  # Shield server
  config.vm.define "shield" do |shield|
    shield.vm.hostname = "shield.test"
    shield.vm.network :private_network, ip: 192.168.62.13
  end


  # Ansible provisioner.
  config.vm.provision :ansible do |ansible|
    ansible.playbook = "playbook.yml"
    ansible.inventory_path = "hosts"
  end
end
