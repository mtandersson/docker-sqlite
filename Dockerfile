FROM debian:stable-20210511-slim

RUN apt-get update && \
	DEBIAN_FRONTEND=noninteractive apt-get -yq --no-install-recommends install sqlite3=3.* \
	&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* 
ENTRYPOINT [ "sqlite3" ]
