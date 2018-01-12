FROM ubuntu:17.10

RUN set -x \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
       ca-certificates apt-transport-https wget libprotobuf10 libpython2.7 python \
       sudo vim curl wget unzip net-tools iputils-ping parallel jq \
    && rm -rf /var/lib/apt/lists/*

RUN wget https://dev.mysql.com/get/Downloads/MySQL-Shell/mysql-shell_1.0.11-1ubuntu17.10_amd64.deb \
 && DEBIAN_FRONTEND=noninteractive dpkg -i ./mysql-shell_1.0.11-1ubuntu17.10_amd64.deb \
 && rm -f ./mysql-shell_1.0.11-1ubuntu17.10_amd64.deb

#ENTRYPOINT ["mysqlsh"]

#CMD ["--help"]
