The architectures supported by this image are:

| Architecture | Tag |
| :----: | --- |
| x86-64 | latest |

## Application Setup

The application can be accessed at:

* http://yourhost:3000/

By default the user/pass is abc/abc, if you change your password or want to login manually to the GUI session for any reason use the following link:

* http://yourhost:3000/?login=true

## Usage

Here are some example snippets to help you get started creating a container.

### docker-compose (recommended, [click here for more info](https://docs.linuxserver.io/general/docker-compose))

```yaml
---
version: "2.1"
services:
  audacity:
    image: lscr.io/linuxserver/audacity
    container_name: audacity
    environment:
      - PUID=1000
      - PGID=1000
      - TZ=Europe/London
    volumes:
      - /path/to/config:/config
    ports:
      - 3000:3000
    restart: unless-stopped
```

### docker cli ([click here for more info](https://docs.docker.com/engine/reference/commandline/cli/))

```bash
docker build -t mydbeaver .

```
```bash

docker run -it --rm \
  --name=mydbeaver \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Europe/Rome \
  -p 3000:3000 \
  mydbeaver
```

