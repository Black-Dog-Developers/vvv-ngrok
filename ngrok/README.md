# ngrok

Installs ngrok onto the VVV box
Configures VVV to execute it on init by updating the /provision/vvv-init.sh script
Execute script will run all configured ngrok tunnels by default

## How To Use

Extend your `vvv-custom.yml` like this:

```yml
utilities:
  ngrok:
    - ngrok

utility-sources:
  ngrok: https://github.com/blackdogdevelopers/vvv-ngrok.git
```

## Configuration

After initial start update the ngrok configuration file to match your setup requirements.

Edit /provision/utilities/ngrok/ngrok/vvv-ngrok.yml to create a [valid config file](https://ngrok.com/docs#config) for your configuration.

At a minimum you need to specify your authorization key

