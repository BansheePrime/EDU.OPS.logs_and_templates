#!/usr/bin/env bash
mkdir -p /var/www/cookie-research/html/
cp -rf ./attacker1.html /var/www/cookie-research/html/
cp -rf ./subattacker2.html /var/www/cookie-research/html/
cp -rf ./subsubattacker3.html /var/www/cookie-research/html/
chmod -R 755 /var/www/cookie-research

# Update Nginx conf
cp -rf ./cookie-research.conf /etc/nginx/sites-available/
# Linking avail and enabled
sudo ln -s /etc/nginx/sites-available/cookie-research.conf /etc/nginx/sites-enabled/
echo " "
echo "Do not forget to restart Nginx with: sudo systemctl restart nginx"
echo " "
