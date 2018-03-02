#!/bin/bash

# slow_log
yes "mysql -b -N -h mysql -u root -pmypass mysql < /scripts/slow.sql >> /tmp/slow.log" | parallel --jobs 1 --delay 60 &
#yes "mysql -b -N -h ${MYSQL_HOST} -u ${MYSQL_USER} -p${MYSQL_PASSWORD} ${MYSQL_DATABASE} < /scripts/slow.sql >> /tmp/slow.log" | parallel --jobs 1 --delay 60 &

# general_log
yes "mysql -b -N -h mysql -u root -pmypass mysql < /scripts/general.sql >> /tmp/general.log" | parallel --jobs 1 --delay 60
#yes "mysql -b -N -h ${MYSQL_HOST} -u ${MYSQL_USER} -p${MYSQL_PASSWORD} ${MYSQL_DATABASE} < /scripts/general.sql >> /tmp/general.log" | parallel --jobs 1 --delay 60 &

# global_status (strings/numbers
yes "mysqlsh --json --sqlc --uri root:mypass@mysql:3306/mysql < global_status.sql | jq '.rows[] | .value|=tonumber? // .value|=tostring' | jq -c -s 'from_entries' >> /tmp/json.json" | parallel --jobs 1 --delay 60 &

# global_variables (all strings: No matching token for number_type [BIG_INTEGER] in elasticsearch)
yes "mysqlsh --json --sqlc --uri root:mypass@mysql:3306/mysql < global_variables.sql | jq -c '.rows | from_entries' >> /tmp/json.json" | parallel --jobs 1 --delay 60 &




#mysqlsh --uri root:mypass@mysql/mysql:3306 --json=raw --sqlc --file=slow.sql
#mysqlsh --uri root:mypass@mysql:3306/mysql --classic --sqlc < general.sql 
