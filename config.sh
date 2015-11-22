#!/bin/bash

echo "host = $DB_PORT_3306_TCP_ADDR" >> db.properties
echo "port = $DB_PORT_3306_TCP_PORT" >> db.properties
echo "user = $DB_ENV_DB_USER" >> db.properties
echo "pswd = $DB_ENV_LINKER_CONTROLLER_MYSQL_PASSWORD" >> db.properties
