#!/bin/sh

echo "run crontab $CRON_FILE"
crontab  $CRON_FILE

echo "run crond..."
# start cron
/usr/sbin/crond -f -l 8 
