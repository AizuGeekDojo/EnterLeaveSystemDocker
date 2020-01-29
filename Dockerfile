#FROM golang:latest
FROM golang:1.13.6-stretch

RUN dpkg --add-architecture armhf
RUN apt update && apt install -y crossbuild-essential-armhf libusb-1.0-0-dev:armhf

ENV CC arm-linux-gnueabihf-gcc
ENV CXX arm-linux-gnueabihf-g++

ENV CGO_ENABLED 1
ENV GOOS linux
ENV GOARCH arm
