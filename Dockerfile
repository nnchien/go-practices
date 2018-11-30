FROM golang:1.9.7

WORKDIR /go/src/github.com/nnchien/go-practices/

COPY . .

RUN cd deploy;go build

CMD ["/go/bin/deploy"]
