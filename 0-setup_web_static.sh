#!/usr/bin/env bash
# sets up web servers 

sudo apt update
-v nginx || sudo apt install nginx
sudo mkdir -p /data/web_static/releases/test/
sudo mkdir -p /data/web_static/shared/
echo -e "<html>\n\t<head>\n\t</head>\n\t<body>\n\t\tHolberton School\n\t</body>\n</html>" | sudo tee /data/web_static/releases/test/index.html
sudo ln -fs /data/web_static/releases/test/ /data/web_static/surrent
sudo chown -R ubuntu:ubuntu /data/
sudo sed -i \"35i $STATIC" $SRC
sudo service nginx restart
