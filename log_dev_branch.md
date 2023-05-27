# EDU.OPS_logs_and_templates
Deploy Virtualbox on Ubuntu 22.04.04 LTS

## Goals
1. Install Virtualbox via Ansible
2. Launch two/three? VM's for reverse proxy and web server on nginx
3. Get my A's on new GB course

### Homework 01
1.Установите VirtualBox и виртуальную машину с Ubuntu. Все дальнейшие задания рекомендуется делать на Ubuntu.
2.Установите и запустите nginx. Введите в адресной строке браузера http://localhost и убедитесь, что nginx показывает приветственную страницу. Найдите ваш запрос к домашней странице в логах nginx.
3(*).Установите Burp Suite в качестве прокси. Попробовать основные функции: history, interception, sitemap, repeater.
Задания необходимо сдавать в формате скриншотов, которые сопровождаются комментариями. 
Отчет должен быть в pdf формате.
Пожалуйста, пишите в названии pdf файла домашнего задания своё имя.
Преподаватель ждет ваше задание до 1 июня, 20:00 +03:00 UTC

### Host OS
ubuntu-22.04.2-desktop-amd64.iso

### Install Git
sudo apt install git

### Windows buttons
gsettings set org.gnome.desktop.wm.preferences button-layout ":minimize,maximize,close"

#### xrdp 
apt install xrdp
sudo systemctl enable xrdp
xrdp listens on 3389/tcp

### RAID 1
https://www.digitalocean.com/community/tutorials/how-to-create-raid-arrays-with-mdadm-on-ubuntu-22-04

### Ubuntu host Snap update error
sudo snap remove snap-store
sudo snap install snap-store

### Install Timeshift 

### Instal VBox
sudo apt install virtualbox
wget https://download.virtualbox.org/virtualbox/6.1.38/Oracle_VM_VirtualBox_Extension_Pack-6.1.38.vbox-extpack
sudo VBoxManage extpack install Oracle_VM_VirtualBox_Extension_Pack-6.1.38.vbox-extpack

### Install Nginx on alpine box
https://docs.nginx.com/nginx/admin-guide/installing-nginx/installing-nginx-open-source/


### DOC
https://www.virtualbox.org/manual/ch02.html#install-linux-host
