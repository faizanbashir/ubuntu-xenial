From ubuntu:16.04

MAINTAINER faizanbashir <faizan.ibn.bashir@gmail.com>

# disable interactive functions
ENV DEBIAN_FRONTEND noninteractive

# Update and Upgrade
RUN apt-get update && \
    apt-get -y upgrade

# Install commonly used packages
RUN apt-get install -y bash zsh build-essential git grep sed curl wget tar gzip sendmail ssh vim openssl libssl-dev

CMD ["/bin/bash"]