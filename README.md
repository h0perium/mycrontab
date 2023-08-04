### Fast and simple run :

```sh
docker run -d -v /path/to/cronfile_dir:/etc/cron.d  -e CRON_FILE=/etc/cron.d/cronfile -e LANG=C.UTF-8 --restart always --name crontab  h0perium/mycrontab
```

** you just replace the path with your own cronfile folder and set the filename with address in CRON_FILE env var 

## Example cronfile :

```
# Example of job definition:
# .---------------- minute (0 - 59)
# |  .------------- hour (0 - 23)
# |  |  .---------- day of month (1 - 31)
# |  |  |  .------- month (1 - 12) OR jan,feb,mar,apr ...
# |  |  |  |  .---- day of week (0 - 6) (Sunday=0 or 7) OR sun,mon,tue,wed,thu,fri,sat
# |  |  |  |  |
# *  *  *  *  *  command to be executed
0 0      */1 * *   /usr/bin/wget https://www.google.com

```
