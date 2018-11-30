FROM golang:1.9.7

WORKDIR /go/src/github.com/nnchien/go-practices/

COPY . .

RUN cd deploy; go install; go build

CMD ["/go/src/github.com/nnchien/go-practices/deploy/deploy"]
