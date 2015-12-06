# Tomcat-food

## Desciption
This is a dockerized java based web app, tomcat as container,
mysql is required before running this.

## How-to-run
* Run a containner named mysql.
You do not need to bind port.

```sh
docker run --name mysql -d homework_mysql
```

If a container with this name already exists, choose a new name.

```sh
docker run --name mysql_for_food -d homework_mysql
```

Or simply stop and remove this container on the condition that
this container  will not be used in the future.

```sh
docker stop 1003921 && docker rm 1003921
```

> 1003921 is the conflict container ID.

* Start mysql service in that container

Configure and start mysql.

```sh
docker exec -it 31401354 /bin/bash
cd /
sh init.sh
sh start.sh
```
>  31401354 is the newly started mysql container ID

* Build and run web app

Build image

```sh
./build-image.sh
```

Run a new container

```sh
docker run -d -P --name webapp --link mysql:db -d -p 8081:8080 homework_tomcat
```
