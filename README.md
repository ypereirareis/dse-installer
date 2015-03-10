# dse-installer


* `docker ps -aq | xargs docker stop `
* `docker ps -aq | xargs docker rm`
* `docker run --name dse-mysql -e MYSQL_ROOT_PASSWORD=trololo -d mysql`
* `docker run --name dse-server -p 3010:3000 -v $(pwd):/app -d ypereirareis/dse-microservices bash -c 'npm install --production && node server.js'`
* `docker run -p 3020:3000 -v $(pwd):/app --link=dse-server:dse-server -d ypereirareis/dse-front gulp serve`



* `docker run -v $(pwd):/app composer/composer install`
