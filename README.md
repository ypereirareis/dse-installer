# dse-installer


* `docker run --name dse-mysql -e MYSQL_ROOT_PASSWORD=trololo -d mysql`
* `docker run -it --name dse-php --link dse-mysql:mysql -d ypereirareis/dse-microservices`
* [NODEJS SERVER CONTAINER]
* [ANGULARJS FRONT CONTAINER]
* `docker run -v $(pwd):/app composer/composer install`
