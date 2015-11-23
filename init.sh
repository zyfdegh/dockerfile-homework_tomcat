#!/bin/bash

# Init database
HOST=$DB_PORT_3306_TCP_ADDR
PORT=$DB_PORT_3306_TCP_PORT
USER=$DB_ENV_DB_USER
PSWD=$DB_ENV_LINKER_CONTROLLER_MYSQL_PASSWORD

mysql -h $HOST -P $PORT -u$USER -p$PSWD < /init-database.sql
mysql -h $HOST -P $PORT -u$USER -p$PSWD < /food.sql
