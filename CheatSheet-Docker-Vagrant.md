------

## Vagrant
### ACCES MYSQL LOCAL VAGRANT

    SSH into your Vagrant: vagrant ssh
    Change to root user sudo su
    Log as root user to your MySQL DB: mysql -uroot
    Run the following queries (don't forget to replace yourdatabase, _youruser_ and your\password_):
    GRANT ALL PRIVILEGES ON your_database.* TO 'your_user'@'127.0.0.1' identified by 'your_password';
    FLUSH PRIVILEGES;
    You now have granted your user to login to using the host "127.0.0.1"
    You can now go to PhpStorm and test your connection again and it should work!

### MOUNT NAS vagrant :

    sudo apt-get install cifs-utils
    sudo mount -t cifs -o noperm,user=$userinput //X.X.X.X/a/b/c web/var/site

## Docker
### Convert video avec handbrake :

    docker run -d \
        --name=handbrake \
        -p 5800:5800 \
        -v /Users/user/docker/HandBrake/config:/config:rw \
        -v /Users/user/docker/HandBrake:/storage:ro \
        -v /Users/user/docker/HandBrake/watch:/watch:rw \
        -v /Users/user/docker/HandBrake/output:/output:rw \
        jlesage/handbrake

UI :

    http://localhost:5800/

### Drop table au démarrage docker :

    "post-install-cmd": [
    "php bin/console doctrine:schema:drop --force --env=dev",
    "@symfony-scripts"
    ],
### docker lancé alpine en mode interactif
    docker run --name=container-alpine -it alpine ash

### connexion au container php
	docker-compose exec php ash
	docker-compose exec php bash

### liste tous les container dejà lancé
    docker ps -a

### stop all process

    docker container stop $(docker ps -q

### run and rm direct
    docker run --name=container-halloween -it --rm docker/doodle:halloween

### partage de volume
    docker run -it --rm --volume $PWD:/work --workdir /work alpine /bin/ash

### webpack
    docker run --name=webpack -it --rm --volume $PWD:/work --workdir /work egymgmbh/webpack-builder


### hub des truc installable

https://hub.docker.com/_/php?tab=description&page=141

### faire de la place dans docker
    docker image prune -a --filter "until=2020-01-01"
    docker volume prune

### lancer un elasticsearch dans docker
    docker network create elastic
	docker pull docker.elastic.co/elasticsearch/elasticsearch:7.17.6
	docker run --name es01-test --net elastic -p 127.0.0.1:9200:9200 -p 127.0.0.1:9300:9300 -e "discovery.type=single-node" docker.elastic.co/elasticsearch/elasticsearch:7.17.6
	curl -XDELETE 'http://localhost:9200/xxxxx'
	curl -XPUT 'http://localhost:9200/xxxxx?pretty'
	php bin/console index:elasticsearch



### flaresolverr à travers le proxy d'Opera

	sudo docker network create mynet

	sudo docker run -d \
	--security-opt no-new-privileges \
	-p 127.0.0.1:18080:18080 \
	--restart unless-stopped \
	--network mynet \
	--name opera-proxy \
	yarmak/opera-proxy

	sudo docker run -d \
	-e LOG_LEVEL=info \
	-e PROXY_URL=http://opera-proxy:18080 \
	-p 127.0.0.1:8191:8191 \
	--network mynet \
	--name flaresolverr \
	--restart unless-stopped \
	ghcr.io/flaresolverr/flaresolverr:latest


	curl -X POST 'http://localhost:8191/v1' -H 'Content-Type: application/json' --data-raw '{
	"cmd": "request.get",
	"url": "https://ifconfig.me/all.json",
	"maxTimeout": 60000,
	"proxy": {
	"url": "http://opera-proxy:18080"
	}
	}'

	curl https://ifconfig.me/all.json

rotation ip :

	sudo docker restart opera-proxy
