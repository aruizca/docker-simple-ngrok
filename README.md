# docker-simple-ngrok

Yet another Docker image to use ngrok v2

## Why another one

Becuase I was unable to find an existing image that would allow me to run ngrok using my existing configuration file `.ngrok.yml` that I was already using to run ngrok locally.

Before creating this image I tried using a cople of the existing one, but I was unable to make them work with the mentioned used case, which seems to me like the most simple and preferred way that anyone would like to follow IMO, but I might be wrong :-). Of course other images give more options and parameters, but I think they are not really needed because you can encapsulate all the configuration required inside you local `.ngrok.yml`

## Features

* Simple: it assumes everything you need is already in your `.ngrok.yml` configuration file. If that's not case then I suggest using this other image: [wernight/ngrok](https://github.com/wernight/docker-ngrok).
* Secure: Runs as non-root user.

## Usage

Next is an example on how to run a container:

```bash
docker run -d \
    -p 4040:4040 \
    -p 80:80 \
    -v $HOME/.ngrok2/ngrok.yml:/home/ngrok/.ngrok2/ngrok.yml \
    --link web_service_container \
    --name docker-simple-ngrok-container \
    docker-simple-ngrok \
    ./ngrok start <tunnel_name>
```

* You need to map the 80 and 4040 ports
* Create a host mounted volume with our local `ngrok.yml` configuration.
* You also need to link the service you want to tunnel.
* Last but not least, you need start the tunnel by name: `./ngrok start <tunnel_name>`
