#!/bin/bash

echo "check if nginx is connected"
systemctl is-active nginx
echo "install nginx"
sudo apt-get update
sudo apt-get -y install nginx
systemctl is-active nginx
sudo systemctl start nginx

echo "Nginx script is running"
sleep 1

if(systemctl is active nginx):
then
  sudo mkdir /var/www/html/labs
  sudo chown $keletso:root /var/www/html/labs

  ln -s /var/www/html/labs html

  cd html
  touch index.html
  nano index.html

  <html>
      <body>
      <h1>Student Information Page</h1>
      <p>SJ</p> <br> <p>KL</p>
      <p>SFISO</p> <br> <p>KELETSO</p>
      <p>221802177</p> <br> <p>218540493</p>
      <p>Compter Systems</p> <br> <p>Compter Systems</p>
      </body>
  </html>

  else
  echo"error"
  exit 1

  fi
