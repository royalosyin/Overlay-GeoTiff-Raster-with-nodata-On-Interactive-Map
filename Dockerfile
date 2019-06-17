ARG BASE_CONTAINER=andrejreznik/python-gdal:stable
FROM $BASE_CONTAINER

LABEL maintainer="chy <royalosyin@gmail.com>"
RUN apt-get update && apt-get install -y --no-install-recommends cdo && \
    rm -rf /var/lib/apt/lists/*