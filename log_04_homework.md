## Run ansible installation script as sudo
sudo ./ansible_setup.sh

## Setting ssh for fast test
ssh-copy-id localhost
ssh-copy-id 127.0.0.1

## First ansible tests
ansible all -i "localhost," -m shell -a 'echo Ansible is fun'
ansible lab -i hosts -m ping

### The book
Practical Ansible: Configuration Management from Start to Finish by Vincent Sesto

## Vagrant installation
sudo apt install vagrant

## Upgrade vagrant to support virtualbox 7
wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install vagrant

### My case
cat ./gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update

### Connection retrying cure
https://github.com/hashicorp/vagrant/issues/9834
https://stackoverflow.com/questions/22922891/vagrant-ssh-authentication-failure
Set user permissions to $ sudo chmod 644 private_key
