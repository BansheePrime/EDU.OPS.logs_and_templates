#!/usr/bin/env bash
mkdir -p /var/www/cookie-research/html/
cp -rf ./attacker1.html /var/www/cookie-research/html/
cp -rf ./subattacker2.html /var/www/cookie-research/html/
cp -rf ./subsubattacker3.html /var/www/cookie-research/html/
chmod -r 755 /var/www/cookie-research/

# Update Nginx conf
cp -rf ./cookie-research.conf /etc/nginx/sites-available/

# Tests
# Test if directory exists
if [ -d "/var/www/cookie-research/" ] 
then
    echo "DONE: Directory /var/www/cookie-research/ exists." 
else
    echo "Error: Directory /var/www/cookie-research/ does not exists."
fi
# Test if html files set
if [ -f /var/www/cookie-research/html/subsubattacker3.html -a -f /var/www/cookie-research/html/subattacker2.html -a -f /var/www/cookie-research/html/attacker1.html]; then
    echo "DONE: Files set as wanted."
fi
# Test if nginx conf updated
if [ -f /etc/nginx/sites-available/cookie-research.conf]; then
    echo "DONE: Nginx conf updated."
fi