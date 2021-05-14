FROM ubuntu:20.04

# Set ruby version
ARG RUBY_VERSION=3.0.1

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
        libreadline-dev

# Get ruby installer
RUN curl -fsSL https://github.com/rbenv/rbenv-installer/raw/HEAD/bin/rbenv-installer | bash
RUN curl -fsSL https://github.com/rbenv/rbenv-installer/raw/main/bin/rbenv-doctor | bash
RUN rbenv install ${RUBY_VERSION}
RUN rbenv global ${RUBY_VERSION}
RUN rbenv local ${RUBY_VERSION}

CMD [ "irb" ]
