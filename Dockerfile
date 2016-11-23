FROM ubuntu:16.04
MAINTAINER cynosure

LABEL Description="node.js development env" Version="0.1"

COPY sources.list /etc/apt/sources.list

RUN apt-get -q update && apt-get -yq --no-install-recommends install curl
RUN curl -sL https://deb.nodesource.com/setup_7.x | bash - 
RUN apt-get -q update && apt-get install -yq --no-install-recommends \
        build-essential \
        sqlite3 \
        python \
        nodejs \
        git

EXPOSE 3666 8080
CMD ['/bin/bash']
ENTRYPOINT ["echo", "Welcome!"]
