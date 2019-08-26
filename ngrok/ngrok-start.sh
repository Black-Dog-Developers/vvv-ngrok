if ! grep -q "UPDATE ME" /srv/provision/utilities/ngrok/ngrok/vvv-ngrok.yml
then
	/srv/provision/utilities/ngrok/ngrok/ngrok start -config=/srv/provision/utilities/ngrok/ngrok/vvv-ngrok.yml --all > /dev/null &
	echo "ngrok started - check ngrok status panel for active URLs"
else
	echo "You need to customise your ngrok yaml file to use it."
	echo "/provision/utilities/ngrok/ngrok/vvv-ngrok.yml"
fi