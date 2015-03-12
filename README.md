# Installer - Database Schema Explorer

Get this repo:  
`git@github.com:ypereirareis/dse-installer.git && cd dse-installer`

Run the install script:  
`./install.sh`

:information_source: [Docker Compose](https://docs.docker.com/compose/) ([Fig](http://www.fig.sh/)) is comming

:warning: **The first installation process could take some time because of docker image download**

Or respect the following instructions

## Backend Installation

* Get the repo:  
`git clone git@github.com:ypereirareis/dse-microservices.git && cd dse-microservices`

* Install dependencies:  
`docker run -v $(pwd):/app composer/composer install`

* Run a mysql container for example:  
`docker run --name dse-mysql -e MYSQL_ROOT_PASSWORD=trololo -d mysql`

* Then run the Backend application container:  
`docker run --name dse-server --link=dse-mysql:mysql -p 3010:3000 -v $(pwd):/app -d ypereirareis/dse-microservices`

* Check everything is ok:  
[http://127.0.0.1:3010](http://127.0.0.1:3010)

**On OSX (2 possibilities):**

* Run `boot2docker ip` to get ip address
* Execute [boot2docker_forwarding.sh](/boot2docker_forwarding.sh) `./boot2docker_forwarding.sh` to forward ports.

## Frontend Installation

* Come back into previous directory:  
`cd ..`

* Get the repo:  
`git clone git@github.com:ypereirareis/dse-front.git && cd dse-front`

* Then run the Frontend application container:  
`docker run -p 3020:8080 -v $(pwd):/app -d ypereirareis/dse-front`

* Access your frontend dashboard:  
[http://127.0.0.1:3020](http://127.0.0.1:3020)

**On OSX (2 possibilities):**

* Run `boot2docker ip` to get ip address
* Execute [boot2docker_forwarding.sh](/boot2docker_forwarding.sh) `./boot2docker_forwarding.sh` to forward ports.

## Snippets

* Stop all containers: `docker ps -aq | xargs docker stop `
* Remove all containers `docker ps -aq | xargs docker rm`
* Remove all images: `docker rmi $(docker images -q)`


