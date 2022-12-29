FROM ubuntu:20.04

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Kuala_Lumpur

RUN apt-get update && apt-get upgrade -y &&\
    apt-get -qq install -y git \
    curl \
    wget \
    unzip \
    python3 \
    python3-pip

COPY . .
RUN python3 -m pip install -U -r requirements.txt
CMD ["bash","start.sh"]
