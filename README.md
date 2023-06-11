# Docker-AzCopy

[![Build Status](https://app.travis-ci.com/PeterDaveHello/docker-azcopy.svg?branch=master)](https://app.travis-ci.com/PeterDaveHello/docker-azcopy)
[![Docker Hub pulls](https://img.shields.io/docker/pulls/peterdavehello/azcopy.svg)](https://hub.docker.com/r/peterdavehello/azcopy/)

[![Docker Hub badge](http://dockeri.co/image/peterdavehello/azcopy)](https://hub.docker.com/r/peterdavehello/azcopy/)

Docker-AzCopy is a Docker image based on Alpine Linux, pre-installed with Azure AzCopy tool. It offers multiple versions of AzCopy to choose from and can be easily utilized and integrated into CI/CD workflows.

- GitHub: <https://github.com/PeterDaveHello/docker-azcopy>
- Docker Hub: <https://hub.docker.com/r/peterdavehello/azcopy>

See the [AzCopy README](https://github.com/Azure/azure-storage-azcopy/#readme) for more information.

## Docker image Repository

We push the built image to Docker Hub and GitHub Container Registry:

- GitHub Container Registry:
  - `ghcr.io/peterdavehello/azcopy`
  - <https://github.com/PeterDaveHello/azcopy/pkgs/container/azcopy>
- Docker Hub:
  - `peterdavehello/azcopy`
  - <https://hub.docker.com/r/peterdavehello/azcopy/>

Use the prefix `ghcr.io/` if you prefer to use GitHub Container Registry.

## Versioning

The Docker image tags available here correspond to Azure AzCopy versions found on [its releases page on GitHub](https://github.com/Azure/azure-storage-azcopy/releases), without the `v` prefix.

The `latest` tag and short version (version string without the minor or patch version) are also supported. For example, using tag `10` will be the same as using the latest `10.x.y`, whatever the current latest version of v10 is.

You can find valid versions on the [Docker Hub Tags](https://hub.docker.com/r/peterdavehello/azcopy/tags) page.

Although most versions of AzCopy have corresponding images here, please note that inactive images may be removed by Docker Hub. For more information, see the Docker blog post "[Scaling Docker's business to serve millions more developers, storage partners, and enterprises](https://www.docker.com/blog/scaling-dockers-business-to-serve-millions-more-developers-storage/)."

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
