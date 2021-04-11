# bioregistry-docker [![Build and Push to Dockerhub](https://github.com/bioregistry/bioregistry-docker/actions/workflows/ci.yml/badge.svg)](https://github.com/bioregistry/bioregistry-docker/actions/workflows/ci.yml)

This repository uses Docker to containerize the Bioregistry web application. A public instance maintained by the [INDRA Lab](https://indralab.github.io) is served at https://bioregistry.io.

## 🌐 Running Locally

A dockerfile for pulling the latest Bioregistry service and running its web app. Run with:

```shell
$ git clone https://github.com/bioregistry/bioregistry-docker.git
$ cd bioregistry-docker
$ docker-compose up
```

## 🐋 Running from Docker

The image is hosted on Docker Hub under `bioregistry/bioregistry:latest` and can be run with:

```shell
$ docker run -id -p 8766:8766 bioregistry/bioregistry:latest
```

The default port run by the app is `8766`, but the `-p` option lets you map it to another port.

## 📡 Pushing to Docker Hub

This repository is set up with a [GitHub Action](https://github.com/bioregistry/bioregistry-docker/actions/workflows/ci.yml)
to build the dockerfile and push to [Docker Hub](https://hub.docker.com/repository/docker/bioregistry/bioregistry).

## 💰 Funding

The development of the Bioregistry is funded by the DARPA Young Faculty Award W911NF2010255 (PI: Benjamin M. Gyori).
