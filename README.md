This repo provides a way to orchestrate all mehowla apps for demoing or local
development using Docker.

It consists of this repo (the "parent") and all application
repos (the "children") cloned as sub-directories.

## Requirements

[Docker](https://docs.docker.com/install/) (with [docker-compose](https://docs.docker.com/compose/install/))

## Setup

### Clone all required repos

  This only needs to be performed once immediately after running `git clone`.

  ```bash
    $ scripts/setup
  ```

### Build the docker images

  This can take a wile the first time it is run depending on your network
  and disk speeds.

  The command should be run every time new changes are pulled.

  ```bash
    $ docker-compose build
  ```

### Start the containerized environment

  ```bash
    $ docker-compose up -d
  ```

  At this point, all apps and supporting services are running.
  We're now ready to verify everything is setup correctly.

  In the browser:

    - Open the [frontend](http://localhost:8080)
    - Click on a song to play it.
    - Click on 'Dscover' to see realtime updates from other users.

### Troubleshooting Tips

* If you are on a Mac, make sure that you turn OFF experimental features (Preferences->Daemon)
in the Docker app

## Miscellaneous

### Links

  - Web Management Consoles
      - [mongoDB](http://localhost:28017)

### MongoDB Authentication

  MongoDB requires the user to be authenticated. In terminal use the
  following commands to get started with MongoDB.

```bash
  $ docker-compose exec database bash
  $ mongo localhost:${PORT}/admin -u $MONGO_INITDB_ROOT_USERNAME -p $MONGO_INITDB_ROOT_PASSWORD
```

### Useful command line aliases
```bash
  alias d='docker'
  alias dc='docker-compose'
  alias dcleanc='docker rm -v $(docker ps -a -q -f status=exited)'
  alias dcleani='docker rmi -f $(docker images -f '\''dangling=true'\'' -q)'
  alias dcnuke='docker-compose down -v --rmi all --remove-orphans'
  alias di='docker images'
  alias dk='docker kill'
  alias dp='docker ps'
  alias dpa='docker ps -a'
  alias dv='docker volume'
  alias dvl='docker volume ls'
  alias dvr='docker volume rm'
```
