# Search-Replace-DB in a Docker Container

[![Docker Stars](https://img.shields.io/docker/stars/foxylion/search-replace-db.svg?style=flat-square)](https://hub.docker.com/r/foxylion/search-replace-db/) [![Docker Pulls](https://img.shields.io/docker/pulls/foxylion/search-replace-db.svg?style=flat-square)](https://hub.docker.com/r/foxylion/search-replace-db/)

The [Search-Replace-DB project](https://github.com/interconnectit/Search-Replace-DB) in a docker container, accessible via HTTP.

## Usage

```
docker run -p 8000:80 --link mysql \
       foxylion/search-replace-db
```

You can pass environment variables to the image to prefill database informations : 

```
docker run -p 8000:80 --link mysql \
-e DB_NAME='mydb' \
-e DB_user='myuser' \
-e DB_PASS= 'mypassword' \
 foxylion/search-replace-db
```

An example within a docker-compose.yml file : 
```
  srdb:
    image: kgaut/docker-search-replace-db
    container_name: "srdb"
    labels:
      - 'traefik.backend=srdb'
      - 'traefik.port=80'
      - 'traefik.frontend.rule=Host:srdb.localhost'
    environment:
      DB_HOST: 'mariadb'
      DB_USER: 'myuser'
      DB_PASS: 'mypassword'
      DB_NAME: 'database'
```


Full list of environment variables :

  - `DB_NAME` (default to "")
  - `DB_USER` (default to "")
  - `DB_PASS` (default to "")
  - `DB_HOST` (default to "127.0.0.1")
  - `DB_PORT` (default to "3306")
  - `DB_CHARSET` (default to "utf-8")
  - `DB_COLLATE` (default to "")
