FROM golang:1.7

MAINTAINER Ed Zynda

RUN mkdir /app
COPY . /app

WORKDIR /app/src
RUN go get -u github.com/gorilla/websocket
RUN go build main.go

CMD ["./main"]