## Descriptions

Dockerized ADOLLA.

https://github.com/AdollaApp/Adolla

https://hub.docker.com/r/banhcanh/docker-adolla

Use linuxserver's alpine base image.

## Features

From: https://github.com/AdollaApp/Adolla

- Easy progress tracking
- A light and dark theme (system based)
- Multiple icons to pick from
- Automatic backups every 12 hours
- Lists to store manga in
- A customizable reader
- Standalone iOS support
- Is a PWA
- Easy navigation from anywhere in the app
- Multiple intergrations to notify you about new chapters
  - Telegram
  - Discord webhooks
- Multiple scrapers to read from:
  - MangaSee
  - Mangadex
  - ReadComicOnline

## Docker
```yaml
---
version: "2.1"
services:
  adolla:
    image: banhcanh/docker-adolla
    container_name: adolla
    environment:
      - PUID=1000
      - PGID=1000
      - TZ=Europe/Paris
      - UMASK=022 #optional
    ports:
      - 8080:8080
    volumes:
      - /path/to/config:/config
    restart: unless-stopped
```

## License
[MIT](https://choosealicense.com/licenses/mit/)
