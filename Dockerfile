FROM nginx:1.15.2
MAINTAINER t00175663

RUN apt-get update -yq && apt-get install inotify-tools -yq \
    && rm -rf /var/lib/apt/lists/* \
    && apt-get autoclean \
    && apt-get autoremove
