FROM golang:1.14
WORKDIR /go/src/github.com/muzafferjoya/go-jenkins
COPY . .
RUN go install

FROM alpine:3.12
WORKDIR /root
COPY --from=0 /go/bin/go-jenkins .
CMD ["./go-jenkins"]
