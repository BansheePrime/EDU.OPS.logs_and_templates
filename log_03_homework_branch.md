## Virtualbox installation on Ubuntu 22.04
1. Add to /etc/apt/sources.list
sudo add-apt-repository "deb [arch=amd64] http://download.virtualbox.org/virtualbox/debian $(lsb_release -cs) contrib"

2. Add Oracle key
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo gpg --dearmor -o /usr/share/keyrings/oracle-virtualbox-2016.gpg

3. Download package
4. Download Extension pack
5. Fix bug
sudo usermod -aG vboxusers $USER


