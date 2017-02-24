# Docker image for [PHPLOC](https://github.com/sebastianbergmann/phploc)

[![Build Status](https://travis-ci.org/dockerized-php/phploc.svg?branch=master)](https://travis-ci.org/dockerized-php/phploc)

The image are based on [Alpine Linux](https://alpinelinux.org/) and built daily.
Inside the container runs PHP 7.1.  
It also uses [tini](https://github.com/krallin/tini) as [init](https://en.wikipedia.org/wiki/Init).

## Supported tags

- `latest` [(latest/Dockerfile)](https://github.com/dockerized-php/phploc/blob/master/Dockerfile)

## How to use this image

### Install

Install the container:

```
docker pull dockerizedphp/phploc
```

### Usage

I'm recommend to use the images as an shell alias to access via short-command.
To use simply *phploc* everywhere on CLI add this line to your ~/.zshrc, ~/.bashrc or ~/.profile.

```
alias phploc='docker run -v $PWD:/app --rm dockerizedphp/phploc'
```

If you don't have set the alias, use this command to run the container: 

```
docker run --rm -v /path/to/app:/app dockerizedphp/phploc [some arguments for phploc]
```
