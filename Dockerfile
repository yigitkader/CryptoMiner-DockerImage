### THIS IMAGE CAN CREATE WITH ALPINE LINUX{ Cause is smaller :) } BUT ALPINE LINUXDOESNT SUPPORT M1 ARM CHIP. SO I CREATE WITH UBUNTU

FROM ubuntu:latest

LABEL OWNER="CREATED BY YIGIT KADER"
LABEL GITHUB="github.com/ryigitkader"

ENV WORKER=dockerworker

#IMPORTANT ! YOUR WALLET ID
ENV WALLET=45DnQfVYTyH9dwpQ2q8Sf4AixfK4uxe66JSfcE2KjyqmCYKA5Gprjx8VkFgU1KdBAhEMafkeVWb4c46fneFVDQTPGXbNCDz

#YOU CAN CHOOSE DIFFERENT POOLS
ENV POOL=gulf.moneroocean.stream:10128

#YOU CAN CHOOSE MONERO COIN GITHUB VERSION
ENV VERSION=master

### UPDATE UBUNTU WITH SKIP TZDATA QUESTIONS
RUN apt-get update && DEBIAN_FRONTEND="noninteractive" TZ="America/New_York" apt-get install -y tzdata
RUN apt install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev -y
RUN apt-get -y install cmake 
RUN git clone https://github.com/xmrig/xmrig.git
RUN cd xmrig &&  git checkout ${VERSION} &&  mkdir build &&  cmake . . && make

WORKDIR    /xmrig

CMD [ "sh","-c","./xmrig -o ${POOL} -u ${WALLET} -p ${WORKER}"]

