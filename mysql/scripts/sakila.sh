#!/bin/bash

wget --quiet -O /tmp/sakila-db.tar.gz http://downloads.mysql.com/docs/sakila-db.tar.gz
tar -zxf /tmp/sakila-db.tar.gz -C /tmp/

mysql -b -N -u root -pmypass mysql < /tmp/sakila-db/sakila-schema.sql
mysql -b -N -u root -pmypass mysql < /tmp/sakila-db/sakila-data.sql
