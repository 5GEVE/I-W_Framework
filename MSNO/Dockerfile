FROM golang:latest AS builder

RUN apt -y update && apt -y install \
    git \
    sudo

WORKDIR /go
RUN go install https://forge.ericsson.net/plugins/git/o5geve/storage.git
RUN go install https://forge.ericsson.net/plugins/git/o5geve/msno.git
RUN go install https://forge.ericsson.net/plugins/git/o5geve/middleware.git

RUN go get -u ./...