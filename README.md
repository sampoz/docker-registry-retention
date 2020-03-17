# Description

This is rather simple script that reads remote private Docker Registry
Repository and deletes old images.

```
$ ./docker-registry-retention -h
usage: docker-registry-retention [-h] [-c CONFIG] [-p PASSWORD] [-u USERNAME]
                                 [-d] [-e EXCLUDE] [-k KEYWORD] [-r RETAIN]
                                 repository

Script removes Docker images from Docker Registry leaving only latest N images

positional arguments:
  repository            docker repository, example:
                        registry.example.com/mygroup/myproject

optional arguments:
  -h, --help            show this help message and exit
  -d, --dryrun          Run without deleting anything
  -e EXCLUDE, --exclude EXCLUDE
                        exclude tags by keyword
  -k KEYWORD, --keyword KEYWORD
                        filter tags by keyword
  -r RETAIN, --retain RETAIN
                        retain N images, default is 10

authentication arguments:
  -c CONFIG, --config CONFIG
                        path to docker config file, default is
                        ~/.docker/config.json
  -p PASSWORD, --password PASSWORD
                        override docker registry password
  -u USERNAME, --username USERNAME
                        override docker registry username
```

# Docker

Application can be started in docker environment:
```
docker run --rm mesouug/docker-registry-retention:latest
```
