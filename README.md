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

```bash
docker build -t mydbeaver .

```

### docker cli ([click here for more info](https://docs.docker.com/engine/reference/commandline/cli/))


```bash

docker run -d \
  --name=mydbeaver \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Europe/Rome \
  -p 3000:3000 \
  mydbeaver
```

