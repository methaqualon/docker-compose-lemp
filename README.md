# Docker Compose LEMP Stack

This repository contains a little `docker-compose` configuration to start a `LEMP (Linux, Nginx, MariaDB, PHP)` + PHPMyAdmin stack.

## Details

The following versions are used.

* PHP 8 (FPM) - With pdo_mysql driver (you can comment it on php.Dockerfile)
* Nginx (latest)
* MariaDB 10.3.9
* PHPMyAdmin (latest)

## Configuration

The Nginx configuration can be found in `config/nginx/`.
Also there are another Nginx conf prepared for most of all php frameworks (just made "public" root dir)

You can also set the following environment variables, for example in the included `.env` file:

| Key | Description |
|-----|-------------|
|APP_NAME|The name used when creating a container.|
|MYSQL_ROOT_PASSWORD|The MySQL root password used when creating the container.|

## Usage

To use it, simply follow the following steps:

##### Clone this repository.

Clone this repository with the following command: `git clone https://github.com/methaqualon/docker-compose-lemp.git`.

##### Start the server.

Start the server using the following command inside the directory you just cloned: `docker-compose up`.

##### You have edited (Dockerfile|docker-compose.yml|*.conf)

Rebuild docker-compose network with all containers there: `docker-compose up --build`.

## Entering the containers

You can use the following command to enter a container:

`docker exec -ti {CONTAINER_NAME} /bin/bash`

Where `{CONTAINER_NAME}` is one of:

* `php`
* `nginx`
* `mariadb`
* `pma`
