# BaseX Dockerfile

This repository contains **Dockerfile** of [BaseX](http://basex.org/) for [Docker](https://www.docker.com/).

## Installation

1. Install [Docker](https://www.docker.com/).
2. Simplest is to download our [automated build](https://registry.hub.docker.com/u/dirkk/basexhttp/) by running `docker pull dirkk/basexhttp`

Otherwise, you could clone this repository by running `git clone git@github.com:dirkk/docker-basexhttp.git` and build the docker image `docker build -t basexhttp .`

## Usage

    docker run -p 80:8984 --rm -it basexhttp

This will run BaseX with the HTTP port listening on port 80 (the default HTTP port).

### Attach persistent/shared directories

    docker run -p 80:8984 -p 1984:1984 --name basexhttp -v <data-dir>:/data -v <repo-dir>:/repo -v <restxq-dir>:/webapp --rm -it basexhttp

This will attach your directories (which you have to define in the `<>` parts) as data, repo and restxq directories, respectively.
Also, it will bind the BaseX server port, so you can access the BaseX Server using a BaseX Client.

If you want to start the process in the background you can use the flag `-d` and drop the `--rm -it` flags.

Open `http://localhost` in your browser to see your RESTXQ page.

## Use a different BaseX version

We do use tagged automated builds, so you can download a different docker build at our [build page](https://registry.hub.docker.com/u/dirkk/basexhttp/builds_history/261655/). For example, to use BaseX 8.2 you can issue

    docker pull dirkk/basexhttp:8.2
