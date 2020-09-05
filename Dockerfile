# `docker-build -t . boost-asio-practice`
# `docker run -ti boost-asio-practice`
# `./bin/boost-asio-practice`
# TODO Change this to ubuntu 20 when you can stomach another build
FROM ubuntu:bionic as build
RUN apt-get update
RUN apt-get install libboost-dev libboost-all-dev build-essential -y
# This could be in the command above but it takes 30 minutes and I don't want to blow cache
RUN apt-get install cmake -y
WORKDIR /boost-asio-practice
COPY ./ ./
FROM build AS runtime
RUN cmake . && make
EXPOSE 4000:4000
#CMD "./boost-asio-practice"