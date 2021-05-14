FROM ubuntu:20.04

ENV PATH /root/.rbenv/shims:/root/.rbenv/bin:$PATH

# Build dependencies
RUN apt-get update && \
    apt-get install -y \
        curl \
        gcc \
        make \
        libssl-dev \
        zlib1g-dev \
        tig \
        zip \
        unzip \
        libreadline-dev \
        locales locales-all

ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

# Get ruby installer
RUN curl -fsSL https://github.com/rbenv/rbenv-installer/raw/HEAD/bin/rbenv-installer | bash
RUN curl -fsSL https://github.com/rbenv/rbenv-installer/raw/main/bin/rbenv-doctor | bash

# Set ruby version
ARG RUBY_VERSION=3.0.1

RUN rbenv install ${RUBY_VERSION}
RUN rbenv global ${RUBY_VERSION}
RUN rbenv local ${RUBY_VERSION}

CMD [ "irb" ]
