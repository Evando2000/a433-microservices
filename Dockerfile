FROM golang:1.15-alpine

# Label for uploading to GitHub Packages
LABEL org.opencontainers.image.source=https://github.com/evando2000/a433-microservices

WORKDIR /go/src/github.com/dicodingacademy/karsajobs
ENV GO111MODULE=on
ENV APP_PORT=8080

COPY go.mod .
COPY go.sum .
RUN go mod download

COPY . .
RUN mkdir /build; \
    go build -o /build/ ./...

EXPOSE 8080
CMD ["/build/web"]
