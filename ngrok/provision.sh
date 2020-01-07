#!/usr/bin/env bash

echo "Installing ngrok"

# Install GMP
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip --quiet --output-document=/tmp/ngrok.zip
unzip /tmp/ngrok.zip -d /tmp
mv /tmp/ngrok /srv/provision/utilities/ngrok/ngrok/
rm /tmp/ngrok.zip

# Check to see if we've already added the start up script
if ! grep -q "ngrok-start.sh" /srv/config/homebin/vagrant_up_custom
then
	echo "Added ngrok-start to vagrant_up_custom"
	echo "/srv/provision/utilities/ngrok/ngrok/ngrok-start.sh" >> /srv/config/homebin/vagrant_up_custom
fi
echo "ngrok setup complete!"