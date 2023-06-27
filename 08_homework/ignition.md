###

echo "<body>Linus Benedict Torvalds : December 28, 1969</body>" >> ./08_homework/user_info.html
add CORS to localhost:
add_header 'Access-Control-Allow-Origin' '*' always;

cp ./07_homework/geek.html ./08_homework/attack.html
nano ./08_homework/attack.html
xhr.open("GET", "http://victim.com/secret.txt", false); => xhr.open("GET", "http://localhost/user_info.html", false);

add_header 'Access-Control-Allow-Origin' 'self' 'http://trustedhost.com' always;