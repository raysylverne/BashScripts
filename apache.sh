#!/bin/bash

# Update Linux OS, Install Apache Web Server, Edit HTML Landing Page.

# Make sure the script is being executed with superuser privileges.
if [[ "${UID}" -ne 0 ]]
then 
	echo "Please run with sudo or as root."
	exit 1
fi


# Update OS

yum update -y

# Install Apache Server

yum install -y httpd

# Start & Configure Server to launch at boot

systemctl start httpd
systemctl enable httpd

# Configure index.html

cd /var/www/html

echo '<head>' >> index.html
echo '<title>Hello World!</title>' >> index.html
echo '</head>' >> index.html
echo '<body>' >> index.html
echo "" >> index.html
echo '<h1>Hello world!</h1>' >> index.html
echo '<p> Level Up! - Black Team Ace Ray Sylver.</p>' >> index.html
echo '<p> Next I will push this sript to GitHub.</p>' >> index.html
echo "" >> index.html
echo '</body>' >> index.html
echo '</html>' >> index.html

