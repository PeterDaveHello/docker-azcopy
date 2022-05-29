# docker-azcopy

[![Build Status](https://app.travis-ci.com/PeterDaveHello/docker-azcopy.svg?branch=master)](https://app.travis-ci.com/PeterDaveHello/docker-azcopy)
[![Docker Hub pulls](https://img.shields.io/docker/pulls/peterdavehello/azcopy.svg)](https://hub.docker.com/r/peterdavehello/azcopy/)

[![Docker Hub badge](http://dockeri.co/image/peterdavehello/azcopy)](https://hub.docker.com/r/peterdavehello/azcopy/)

Dockerized [AzCopy](https://github.com/Azure/azure-storage-azcopy/) based on Alpine Linux with various versions, easy to use and easy to integrate with CI/CD.

- GitHub: <https://github.com/PeterDaveHello/docker-azcopy>
- Docker Hub: <https://hub.docker.com/r/peterdavehello/azcopy>

See README.md of AzCopy for more details: <https://github.com/Azure/azure-storage-azcopy/#readme>

## Versioning

The Docker image tags here will all be mapping back to a corresponding AzCopy version on [its releases page on GitHub](https://github.com/Azure/azure-storage-azcopy/releases), just without the `v` prefix.

The `latest` tag and short version (version string without the minor or patch version) are also supported here, for example, using tag `10` will be the same as using the latest `10.x.y`, whatever the current latest v10 is.

You can find a valid version on the Docker Hub Tags page <https://hub.docker.com/r/peterdavehello/azcopy/tags>

Most versions of AzCopy will have its corresponding images here, but please note that inactive images may be removed by Docker Hub, reference: <https://www.docker.com/blog/scaling-dockers-business-to-serve-millions-more-developers-storage/>

## Usage

```sh
docker run --rm -it -v /local/path/to/mount:/container/path peterdavehello/azcopy[:<version>] azcopy [command] [arguments]
```

For example:

```sh
docker run --rm -it -v $PWD/src:/src peterdavehello/azcopy:10.11.0 azcopy sync /src https://azcopydockertest.blob.core.windows.net/$$web
```

You can also confirm its version by:

```sh
$ docker run --rm -it -v $PWD/src:/src peterdavehello/azcopy:10.11.0 azcopy --version

Unable to find image 'peterdavehello/azcopy:10.11.0' locally
10.11.0: Pulling from peterdavehello/azcopy
540db60ca938: Already exists 
2bb029cc37b3: Pull complete 
0706491099ca: Pull complete 
Digest: sha256:bf339591009673060633cf95c3339e386a3d4e187e206da116547ac081a0b375
Status: Downloaded newer image for peterdavehello/azcopy:10.11.0
azcopy version 10.11.0
```
