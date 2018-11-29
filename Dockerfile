# iron/go:dev is the alpine image with the go tools added
FROM iron/go:dev
WORKDIR /go-practices

ENV SRC_DIR=/go/src/github.com/nnchien/go-practices
  # Add the source code:
ADD . $SRC_DIR
  # Build it:
RUN cd $SRC_DIR; go build -o go-practices; cp go-practices /go-practices/
ENTRYPOINT ["./go-practices"]