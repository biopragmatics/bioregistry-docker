# bioregistry-docker [![Build and Push to Dockerhub](https://github.com/bioregistry/bioregistry-docker/actions/workflows/ci.yml/badge.svg)](https://github.com/bioregistry/bioregistry-docker/actions/workflows/ci.yml)

This repository uses Docker to containerize the Bioregistry web application. A public instance
maintained by the [INDRA Lab](https://indralab.github.io) is served at https://bioregistry.io.

## Running

### 🌐 Running Locally from Source

A dockerfile for pulling the latest Bioregistry service and running its web app. Run with:

```shell
$ git clone https://github.com/bioregistry/bioregistry-docker.git
$ cd bioregistry-docker
$ docker-compose up
```

### 🐋 Running Locally from Docker

The image is hosted on Docker Hub under `bioregistry/bioregistry:latest` and can be run with:

```shell
$ docker run -id --name bioregistry -p 8766:8766 bioregistry/bioregistry:latest
```

The default port run by the app is `8766`, but the `-p` option lets you map it to another port.

If you want to stop/update/restart it, check the [`restart.sh`](restart.sh) script.

### 🐋 Running Remotely from Docker

```shell
$ git clone https://github.com/bioregistry/bioregistry-docker.git
$ cd bioregistry-docker
$ ssh ADDRESS 'bash -s' < restart.sh
```

## 📡 Pushing to Docker Hub

This repository is set up with
a [GitHub Action](https://github.com/bioregistry/bioregistry-docker/actions/workflows/ci.yml)
to build the dockerfile and push
to [Docker Hub](https://hub.docker.com/repository/docker/bioregistry/bioregistry).

## 🎁 Support

The Bioregistry was developed by the [INDRA Lab](https://indralab.github.io), a part of the
[Laboratory of Systems Pharmacology](https://hits.harvard.edu/the-program/laboratory-of-systems-pharmacology/about/)
and the [Harvard Program in Therapeutic Science (HiTS)](https://hits.harvard.edu)
at [Harvard Medical School](https://hms.harvard.edu/).

## 💰 Funding

The development of the Bioregistry is funded by the DARPA Young Faculty Award W911NF2010255 (PI:
Benjamin M. Gyori).
