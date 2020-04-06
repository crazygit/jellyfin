## Jellyfin


Jellyfin with fix chinese plug-in subtitles in ASS format are displayed as squares


Run

```
docker run -d \
 --volume /path/to/local/jellyfin/config:/config \
 --volume /path/to/local/jellyfin/cache:/cache \
 --volume /path/to/local/jellyfin/media:/media \
 --user $(id -u):$(id -g) \
 --net=host \
 --restart=unless-stopped \
 crazygit/jellyfin
```

Visit: <http://your_ip:8096>

More detail, please see:

<https://github.com/jellyfin/jellyfin>
