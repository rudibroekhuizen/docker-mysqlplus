# Default MySQL version, override with environment variable
ARG MYSQL_VERSION=latest

FROM mysql:${MYSQL_VERSION}

RUN apt-get update \
&& apt-get install -y sudo wget vim.tiny parallel
