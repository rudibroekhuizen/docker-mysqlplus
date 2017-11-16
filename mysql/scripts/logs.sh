#!/bin/bash

yes "mysql -b -N -u root -pmypass mysql < /scripts/slow.sql >> /tmp/slow.log" | parallel --jobs 1 --delay 30 &
yes "mysql -b -N -u root -pmypass mysql < /scripts/general.sql >> /tmp/general.log" | parallel --jobs 1 --delay 30 &
