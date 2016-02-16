# php-docker

This is just a simple way (if you are already using docker) to get PHP running if you want to do some PHP development and don't want to install PHP locally.

# Installation

## From DockerHub
This is probably the fastest and easiest way

> docker run -d -p <local-port>:80 -v <local-path-to-html>:/var/www/html --name php peterc/php-dev

Change <local-port> to whatever port you will want to point your browser at.  Port 80 will work fine if you aren't already running another web server.  You can also leave it blank if you want to have docker assign a random port, you'll just need to grab that from 'docker ps' after you start the container.

## From GitHub
After cloning this repo run the following:

> docker build -t php-dev .

You can change *php-dev* to any name you like.  This will take a while but when it completes run:

> docker run -d -p <local-port>:80 -v <local-path-to-html>:/var/www/html --name php php-dev

Change <local-port> to whatever port you will want to point your browser at.  Port 80 will work fine if you aren't already running another web server.  You can also leave it blank if you want to have docker assign a random port, you'll just need to grab that from 'docker ps' after you start the container.
