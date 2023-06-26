###
diff /etc/nginx/sites-available/victim.conf /etc/nginx/sites-available/attacker.conf
sed -n '18p' /etc/nginx/sites-available/victim.conf
sed -i '18d' /etc/nginx/sites-available/victim.conf && cat /etc/nginx/sites-available/victim.conf
sudo nginx -t && sudo systemctl restart nginx

add_header "Set-Cookie" "geek_test=geek_attacker-com;";
sudo cp ./07_homework/cookie_reader.php /var/www/html/

sudo cp -R ./07_homework/cookie_reader.html /var/www/html/

