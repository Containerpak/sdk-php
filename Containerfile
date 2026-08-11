FROM ghcr.io/containerpak/base-sdk:main

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    composer php-cli php-curl php-fpm php-gd php-intl php-mbstring \
    php-mysql php-xml php-zip && \
    apt-get clean && \
    find /var/lib/apt/lists -mindepth 1 -delete
