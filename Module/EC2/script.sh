#!/bin/bash
yum update -y
yum install -y httpd

systemctl start httpd
systemctl enable httpd

# Download the website content
wget https://www.free-css.com/free-css-templates/page296/carvilla -O /var/www/html/index.html

# Restart Apache to apply changes
systemctl restart httpd

