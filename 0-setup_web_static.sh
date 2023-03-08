#!/usr/bin/env bash
# sets up web servers 

sudo apt update
-v nginx || sudo apt install nginx
sudo mkdir -p data/web_static/releases/test/
sudo mkdir -p data/web_static/shared/
echo "<!DOCTYPE html>
<html>
<head></head>
<body> Web-static </body>
</html>" | sudo tee /data/web_static/releases/test/index.html
sudo ln -fs /data/web_static/releases/test/ /data/web_static/surrent
sudo chown -R ubuntu:ubuntu /data/
sudo sed -i '39 i\ \tlocation /hbnb_static {\n\t\talias /data/web_static/current;\n\t}\n' /etc/nginx/sites-enables/default
sudo service nginx restart
