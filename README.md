# dse-installer


* `docker ps -aq | xargs docker stop `
* `docker ps -aq | xargs docker rm`
* `docker run --name dse-mysql -e MYSQL_ROOT_PASSWORD=trololo -d mysql`
* `docker run --name dse-server -p 3010:3000 -v $(pwd):/app --link dse-mysql:mysql -d ypereirareis/dse-microservices node server.js`
* `docker run -p 3020:3000 -it -v $(pwd):/app  --link=dse-server:dse-server ypereirareis/dse-front bash -c "cd front && gulp serve"`



* `docker run -v $(pwd):/app composer/composer install`
