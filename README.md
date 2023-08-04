### Fast and simple run :

```sh
docker run -d -v /path/to/cronfile_dir:/etc/cron.d  -e CRON_FILE=/etc/cron.d/cronfile -e LANG=C.UTF-8 --restart always --name crontab  h0perium/mycrontab
```

** you just replace the path with your own cronfile folder and set the filename with address in CRON_FILE env var 

