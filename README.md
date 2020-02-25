# Description

This is rather simple script that reads remote private Docker Registry
Repository and deletes old images.

```
$ ./docker-registry-retention -h
usage: docker-registry-retention [-h] [-c CONFIG] [-d] -g REGISTRY
                                 [-k KEYWORD] [-r RETAIN] -p REPOSITORY

Script removes Docker images from Docker Registry leaving only latest N images

optional arguments:
  -h, --help            show this help message and exit
  -c CONFIG, --config CONFIG
                        path to docker config file, default is
                        ~/.docker/config.json
  -d, --dryrun          Run without deleting anything
  -g REGISTRY, --registry REGISTRY
                        docker registry domain
  -k KEYWORD, --keyword KEYWORD
                        filter tags using KEYWORD
  -r RETAIN, --retain RETAIN
                        retain N images, default is 10
  -p REPOSITORY, --repository REPOSITORY
                        docker repository path
```
