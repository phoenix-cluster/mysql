#!/bin/sh
export MYSQL_ROOT_PASSWORD=bprc2019
export MYSQL_DATABASE=phoenix_enhancer
export MYSQL_USER=phoenix_enhancer
export MYSQL_PASSWORD=enhancer123
export CREATE_TABLES_SQL_FILE=create_tables.sql

echo "start to grant file on ${MYSQL_DATABASE} to ${MYSQL_USER}'@'%'"



mysql -p${MYSQL_ROOT_PASSWORD} -u root -Bse "CREATE DATABASE IF NOT EXISTS \`${MYSQL_DATABASE}\`;
						GRANT ALL PRIVILEGES ON \`${MYSQL_DATABASE}\`.* TO '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWORD}';"

mysql -p${MYSQL_PASSWORD} -u ${MYSQL_USER} ${MYSQL_DATABASE} -Bse  "source ${CREATE_TABLES_SQL_FILE}"

mysql -uroot -p${MYSQL_ROOT_PASSWORD} -e "GRANT FILE ON *.* to '${MYSQL_USER}'@'%';"
mysql -uroot -p${MYSQL_ROOT_PASSWORD} -e "FLUSH PRIVILEGES;"
