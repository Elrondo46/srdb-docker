# Search-Replace-DB in a Docker Container

[![Docker Stars](https://img.shields.io/docker/stars/foxylion/search-replace-db.svg?style=flat-square)](https://hub.docker.com/r/foxylion/search-replace-db/) [![Docker Pulls](https://img.shields.io/docker/pulls/foxylion/search-replace-db.svg?style=flat-square)](https://hub.docker.com/r/foxylion/search-replace-db/)

The [Search-Replace-DB project](https://github.com/interconnectit/Search-Replace-DB) in a docker container, accessible via HTTP.

## Usage

```
docker run -p 8000:80 --link mysql \
       foxylion/search-replace-db
```
