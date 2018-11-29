# Start from a Debian image with the latest version of Go installed
# and a workspace (GOPATH) configured at /go.
FROM golang:1.9.7

  # Copy the local package files to the container's workspace.
ADD . src/github.com/nnchien/go-practices

  # Build the outyet command inside the container.
  # (You may fetch or manage dependencies here,
  # either manually or with a tool like "godep".
RUN cd src/github.com/nnchien/go-practices/deploy; go install; go build
  # Run the outyet command by default when the container starts.
CMD ["/go/bin/deploy"]
