#!/bin/bash

yes "mysql -b -N -h mysql -u root -pmypass mysql < /scripts/slow.sql >> /tmp/slow.log" | parallel --jobs 1 --delay 30 &
#yes "mysql -b -N -h ${MYSQL_HOST} -u ${MYSQL_USER} -p${MYSQL_PASSWORD} ${MYSQL_DATABASE} < /scripts/slow.sql >> /tmp/slow.log" | parallel --jobs 1 --delay 30

yes "mysql -b -N -h mysql -u root -pmypass mysql < /scripts/general.sql >> /tmp/general.log" | parallel --jobs 1 --delay 30 &
#yes "mysql -b -N -h ${MYSQL_HOST} -u ${MYSQL_USER} -p${MYSQL_PASSWORD} ${MYSQL_DATABASE} < /scripts/general.sql >> /tmp/general.log" | parallel --jobs 1 --delay 30 &
