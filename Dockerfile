FROM 172.21.0.24/hgq/golang:hgq

RUN useradd -r -s /bin/false helloworld

RUN go get github.com/willejs/go-hello-world
RUN go install github.com/willejs/go-hello-world

ENTRYPOINT /go/bin/go-hello-world

EXPOSE 8484
