docker ps -aq | xargs docker stop
docker ps -aq | xargs docker rm

### Backend install
rm -rf dse-microservices
git clone git@github.com:ypereirareis/dse-microservices.git && cd dse-microservices
docker run -v $(pwd):/app composer/composer install
docker run --name dse-mysql -e MYSQL_ROOT_PASSWORD=trololo -d mysql
docker run --name dse-server --link=dse-mysql:mysql -p 3010:3000 -v $(pwd):/app -d ypereirareis/dse-microservices bash -c 'npm install --production && node server.js'

cd ../

### Frontend install
rm -rf dse-front
git clone git@github.com:ypereirareis/dse-front.git && cd dse-front
docker run -p 3020:8080 -v $(pwd):/app --link=dse-server:dse-server -d ypereirareis/dse-front bash -c 'cd dist/ && python -m SimpleHTTPServer 8080'
