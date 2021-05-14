# Ubuntu 20.04 + Ruby docker container [![Build Status](https://travis-ci.com/alexkargin/ubuntu-ruby-docker.svg?branch=main)](https://travis-ci.com/github/alexkargin/ubuntu-ruby-docker)
Dockerfile to install Ubuntu 20.04 with any version of Ruby.

Ruby version 3.0.1 will be installed by default. 

But you can change the version in dockerfile or use the RUBY_VERSION argument on the command line

```bash
docker build -t ubuntu-ruby --build-arg RUBY_VERSION=2.5.0 .
```
Available on [Docker Hub](https://hub.docker.com/r/alexkargin/ubuntu-ruby-docker).

The package uses [rbenv](https://github.com/rbenv/rbenv) to install ruby.